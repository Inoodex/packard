<?php

namespace App\Models;

use Illuminate\Database\Eloquent\{Model, SoftDeletes};
use Illuminate\Database\Eloquent\Relations\{BelongsTo, HasMany};


class Quotation extends Model
{

    use SoftDeletes;
    protected $fillable = [
        'quotation_number',
        'client_id',
        'quotation_date',
        'expiry_date',
        'notes',
        'sub_total',
        'discount_percent',
        'discount_amount',
        'vat_percent',
        'vat_amount',
        'tax_percent',
        'tax_amount',
        'installation_charge',
        'round_off',
        'total_amount',
        'status',

        // PDF snapshot fields
        'client_name',
        'client_designation',
        'client_address',
        'client_phone',
        'client_email',
        'attention_to',
        'body_content',
        'terms_conditions',
        'subject',
        'company_name',
        'company_phone',
        'company_email',
        'company_website',
        'company_address',
        'logo',
        'signatory_name',
        'signatory_designation',
        'signatory_photo',
        'additional_enclosed',
    ];

    protected $casts = [
        'quotation_date' => 'date',
        'expiry_date' => 'date',
        'sub_total' => 'decimal:2',
        'discount_amount' => 'decimal:2',
        'vat_percent' => 'decimal:2',
        'vat_amount' => 'decimal:2',
        'tax_percent' => 'decimal:2',
        'tax_amount' => 'decimal:2',
        'installation_charge' => 'decimal:2',
        'round_off' => 'decimal:2',
        'total_amount' => 'decimal:2',
    ];

    public function client(): BelongsTo
    {
        return $this->belongsTo(Client::class);
    }

    public function items(): HasMany
    {
        return $this->hasMany(QuotationItem::class);
    }

    protected static function boot()
    {
        parent::boot();

        static::creating(function ($quotation) {
            // Only auto-generate if quotation_number is not already set
            if (empty($quotation->quotation_number)) {
                $quotation->quotation_number = static::generateQuotationNumber($quotation);
            }
        });
    }

    public static function generateQuotationNumber($quotation = null)
    {
        // Get client/company name prefix
        $prefix = 'quo'; // Default fallback
        
        if ($quotation) {
            // Try to get client name first
            if ($quotation->client_id) {
                $client = Client::find($quotation->client_id);
                if ($client) {
                    // Use first word of client name, lowercase
                    $prefix = strtolower(explode(' ', trim($client->name))[0]);
                }
            }
            // If no client, try company name
            elseif (!empty($quotation->client_name)) {
                $prefix = strtolower(explode(' ', trim($quotation->client_name))[0]);
            }
        }
        
        // Clean prefix: only allow alphanumeric characters
        $prefix = preg_replace('/[^a-z0-9]/', '', $prefix);
        if (empty($prefix)) {
            $prefix = 'quo';
        }
        
        // Search last quotation with same prefix
        $lastQuotation = static::where('quotation_number', 'like', "{$prefix}-%")
            ->withTrashed() // include deleted quotations
            ->orderBy('id', 'desc')
            ->first();

        // Extract last sequence number
        $sequence = 1;
        if ($lastQuotation) {
            // Get the last part after the final hyphen
            $lastParts = explode('-', $lastQuotation->quotation_number);
            $lastSeq = end($lastParts);
            $sequence = (int)$lastSeq + 1;
        }

        // Format: hasan-0001, rahim-0002, etc.
        return "{$prefix}-" . str_pad($sequence, 4, '0', STR_PAD_LEFT);
    }

}
