<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Packard</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Times New Roman', Times, serif !important;
            font-size: 12px;
            line-height: 1.35;
            color: #000;
        }

        body,
        table,
        th,
        td,
        div,
        p,
        span,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        small,
        strong {
            font-family: 'Times New Roman', Times, serif !important;
        }

        /* =============================================
           PAGE SETUP - Critical for multi-page PDFs
           ============================================= */
        @page {
            margin: 0;
            size: A4;
        }

        /* =============================================
           GREEN SIDEBAR - Uses fixed positioning so it
           repeats on every page automatically
           ============================================= */
        .green-shape-wrapper {
            position: fixed;
            top: 0;
            left: 0;
            width: 45px;
            height: 100%;
            z-index: 0;
        }

        .green-shape-img {
            width: 45px;
            height: 100%;
            display: block;
        }

        /* =============================================
           HEADER - Fixed so it repeats on every page
           ============================================= */
        .page-header {
            position: fixed;
            top: 0;
            left: 45px;
            right: 0;
            height: 80px;
            padding: 12px 20px 12px 20px;
            background: #fff;
            z-index: 10;
            display: table;
            width: calc(100% - 45px);
            box-sizing: border-box;
        }

        .logo-left {
            display: table-cell;
            vertical-align: middle;
            padding-left: 20px;
        }

        .logo-right {
            display: table-cell;
            vertical-align: middle;
            text-align: right;
            padding-right: 20px;
        }

        .logo-right img {
            max-width: 180px;
            max-height: 55px;
        }

        .circle-border {
            border: 1px solid #000;
            border-radius: 50%;
            padding: 2px;
            display: inline-block;
        }

        .circle-inner {
            background: #1c0770;
            color: white;
            width: 40px;
            height: 40px;
            text-align: center;
            line-height: 30px;
            border-radius: 50%;
            font-size: 14px;
        }

        .site-title {
            font-size: 18px;
            color: #1c0770;
            font-weight: 500;
            display: inline-block;
            vertical-align: middle;
            margin-left: 8px;
        }

        /* =============================================
           FOOTER - Fixed so it repeats on every page
           ============================================= */
        .page-footer {
            position: fixed;
            bottom: 0;
            left: 45px;
            right: 0;
            padding: 8px 20px 12px 20px;
            background: #fff;
            z-index: 10;
            width: calc(100% - 45px);
            box-sizing: border-box;
        }

        .footer-line {
            display: table;
            width: 100%;
        }

        .line-small {
            display: table-cell;
            width: 30px;
            vertical-align: middle;
            border-bottom: 2px solid #1c0770;
            height: 1px;
        }

        .footer-title {
            display: table-cell;
            width: 210px;
            font-weight: 600;
            color: #1c0770;
            font-size: 13px;
            padding-left: 10px;
            vertical-align: middle;
        }

        .line-full {
            display: table-cell;
            width: 100%;
            vertical-align: middle;
            border-bottom: 2px solid #1c0770;
            height: 1px;
        }

        .contact {
            margin-top: 6px;
            display: table;
            width: 100%;
        }

        .contact-item {
            display: table-cell;
            width: 33%;
            vertical-align: middle;
            padding-right: 10px;
        }

        .contact-item-inner {
            display: table;
        }

        .icon-box {
            display: table-cell;
            width: 24px;
            height: 24px;
            vertical-align: middle;
            text-align: center;
            background: #1c0770;
            border: 2px solid #808080;
            border-radius: 50%;
        }

        .icon-box img {
            width: 10px;
            height: 10px;
        }

        .contact-text {
            display: table-cell;
            font-size: 11px;
            padding-left: 6px;
            vertical-align: middle;
        }

        /* =============================================
           BACKGROUND WATERMARK IMAGE
           Fixed so it appears on every page
           ============================================= */
        .bg-wrapper {
            position: fixed;
            right: 0;
            top: 180px;
            width: 380px;
            z-index: 0;
            pointer-events: none;
        }

        .bg-main {
            width: 100%;
            opacity: 0.15;
        }

        /* =============================================
           MAIN CONTENT AREA
           Top/bottom padding accounts for fixed header/footer
           ============================================= */
        .content-wrapper {
            margin-left: 45px;
            padding-top: 90px;
            /* height of fixed header + gap */
            padding-bottom: 110px;
            /* height of fixed footer + gap */
            padding-left: 30px;
            padding-right: 30px;
            position: relative;
            z-index: 5;
        }

        /* =============================================
           REFERENCE / DATE
           ============================================= */
        .reference {
            text-align: right;
            margin-bottom: 12px;
        }

        /* =============================================
           RECIPIENT / TO SECTION
           ============================================= */
        .to-section {
            margin-bottom: 14px;
        }

        .to-section p {
            margin: 2px 0;
        }

        /* =============================================
           SUBJECT
           ============================================= */
        .subject {
            margin: 12px 0;
            font-weight: bold;
        }

        /* =============================================
           LETTER BODY
           ============================================= */
        .letter-body {
            margin: 14px 0;
            text-align: justify;
        }

        .additional-enclosed {
            margin: 12px 0;
        }

        /* =============================================
           QUOTATION TABLE
           ============================================= */
        .quotation-title {
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
            margin: 16px 0;
            font-size: 14px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            font-size: 11px;
        }

        thead th {
            border: 1px solid #000 !important;
            padding: 6px 8px;
            text-align: center;
            background-color: #f0f0f0;
            font-weight: bold;
        }

        tbody td {
            border: 1px solid #000 !important;
            padding: 6px 8px;
            vertical-align: middle;
        }

        .serial {
            width: 5%;
            text-align: center;
        }

        .model {
            width: 12%;
            text-align: center;
        }

        .product-description {
            width: 38%;
        }

        .quantity,
        .unit-price,
        .discount,
        .total-price {
            width: 9%;
            text-align: center;
        }

        .unit {
            width: 7%;
            text-align: center;
        }

        .total-row td {
            padding-right: 16px;
            text-align: right;
            font-weight: 600 !important;
            border: 1px solid #000 !important;
        }

        .summary-row td {
            background: transparent !important;
        }

        .summary-final td {
            background: transparent !important;
            font-size: 12px;
            font-weight: bold !important;
        }

        /* =============================================
           AMOUNT IN WORDS
           ============================================= */
        .amount-in-words {
            margin: 14px 0;
            padding: 8px 12px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            font-style: italic;
            text-align: center;
            font-weight: bold;
        }

        /* =============================================
           TERMS TABLE
           ============================================= */
        .terms-title {
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
            margin: 16px 0 8px 0;
        }

        .terms-table {
            margin: 8px 0;
            width: 100%;
            border-collapse: collapse;
        }

        .terms-table td {
            vertical-align: top;
            padding: 4px 6px;
            border: none !important;
        }

        .terms-table td:first-child {
            width: 30px;
            font-weight: bold;
        }

        /* =============================================
           SIGNATURE SECTION
           ============================================= */
        .signature-section {
            margin-top: 50px;
            margin-bottom: 20px;
        }

        .signature-content {
            text-align: left;
            width: 280px;
        }

        .signature-line {
            border-top: 1px dashed #000;
            width: 200px;
            margin: 35px 0 5px 0;
        }
    </style>
</head>

<body>

    {{-- =============================================
         GREEN SIDEBAR — fixed, repeats every page
         ============================================= --}}
    <div class="green-shape-wrapper">
        @if (!empty($pdf_green_shape) && file_exists($pdf_green_shape))
            <img class="green-shape-img" src="{{ $pdf_green_shape }}" alt="" />
        @else
            {{-- Fallback: solid green bar if image missing --}}
            <div style="width:45px;height:100%;background:#2d7a2d;"></div>
        @endif
    </div>

    {{-- =============================================
         HEADER — fixed, repeats every page
         ============================================= --}}
    <div class="page-header">
        <div class="logo-left">
            <div class="circle-border">
                <div class="circle-inner">www</div>
            </div>
            <h1 class="site-title">packardbd.com</h1>
        </div>
        <div class="logo-right">
            @if (!empty($pdf_header_logo) && file_exists($pdf_header_logo))
                <img src="{{ $pdf_header_logo }}" alt="logo" />
            @endif
        </div>
    </div>

    {{-- =============================================
         FOOTER — fixed, repeats every page
         ============================================= --}}
    <div class="page-footer">
        <div class="footer-line">
            <div class="line-small"></div>
            <h1 class="footer-title">{{ $company_name ?? 'N/A' }}</h1>
            <div class="line-full"></div>
        </div>

        <div class="contact">
            <div class="contact-item">
                <div class="contact-item-inner">
                    <div class="icon-box">
                        @if (!empty($pdf_phone_icon) && file_exists($pdf_phone_icon))
                            <img src="{{ $pdf_phone_icon }}" alt="" />
                        @endif
                    </div>
                    <p class="contact-text">{{ $company_phone ?? 'N/A' }}</p>
                </div>
            </div>
            <div class="contact-item">
                <div class="contact-item-inner">
                    <div class="icon-box">
                        @if (!empty($pdf_email_icon) && file_exists($pdf_email_icon))
                            <img src="{{ $pdf_email_icon }}" alt="" />
                        @endif
                    </div>
                    <p class="contact-text">{{ $company_email ?? 'N/A' }}</p>
                </div>
            </div>
            <div class="contact-item">
                <div class="contact-item-inner">
                    <div class="icon-box">
                        @if (!empty($pdf_location_icon) && file_exists($pdf_location_icon))
                            <img src="{{ $pdf_location_icon }}" alt="" />
                        @endif
                    </div>
                    <p class="contact-text">{{ $company_address ?? 'N/A' }}</p>
                </div>
            </div>
        </div>
    </div>

    {{-- =============================================
         BACKGROUND WATERMARK — fixed, every page
         ============================================= --}}
    @if (!empty($pdf_background_logo) && file_exists($pdf_background_logo))
        <div class="bg-wrapper">
            <img class="bg-main" src="{{ $pdf_background_logo }}" alt="" />
        </div>
    @endif

    {{-- =============================================
         MAIN CONTENT — scrolls normally, paginates
         ============================================= --}}
    <div class="content-wrapper">

        {{-- Reference and Date --}}
        <div class="reference">
            <div>Ref: {{ $quotation->quotation_number }}</div>
            <div>{{ $quotation->quotation_date->format('F d, Y') }}</div>
        </div>

        {{-- Recipient Details --}}
        <div class="to-section">
            <p>To,</p>
            @if ($attention_to)
                <p>{{ $attention_to }}</p>
            @endif
            <p>{{ $client_designation ?? 'N/A' }}</p>
            <p>{{ $client_name ?? 'N/A' }}</p>
            <p>{{ $client_email ?? 'N/A' }}</p>
            <p>{{ $client_address ?? 'N/A' }}</p>
        </div>

        {{-- Subject --}}
        <div class="subject">
            Sub: <span
                style="text-decoration: underline;">{{ $subject ?? 'Quotation for Supplying of Products/Services' }}</span>
        </div>

        {{-- Letter Body --}}
        <div class="letter-body">
            <p>{!! nl2br(e($body_content ?? '')) !!}</p>
        </div>

        {{-- Additional Enclosed --}}
        @if ($additional_enclosed)
            <div class="additional-enclosed">
                <strong>Additional Enclosed Documents:</strong><br>
                {!! nl2br(e($additional_enclosed)) !!}
            </div>
        @endif

        {{-- Quotation Title --}}
        <div class="quotation-title">QUOTATION</div>

        {{-- Products Table --}}
        <table>
            <thead>
                <tr>
                    <th class="serial">S.N.</th>
                    <th class="model">MODEL/PART NO.</th>
                    <th class="product-description">DESCRIPTION OF GOODS</th>
                    <th class="quantity">QTY.</th>
                    <th class="unit">UNIT</th>
                    <th class="unit-price">UNIT PRICE</th>
                    <th class="discount">Dis.(%)</th>
                    <th class="total-price">TOTAL PRICE</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($quotation->items as $index => $item)
                    <tr>
                        <td class="serial">{{ $index + 1 }}</td>
                        <td class="model">{{ $item->product?->product_code ?? 'N/A' }}</td>
                        <td class="product-description">
                            @if ($item->product)
                                <strong>{{ $item->product->name }}</strong>
                                @if ($item->product->details)
                                    <br><small style="color: #666;">{{ $item->product->details }}</small>
                                @endif
                            @endif
                        </td>
                        <td class="quantity">{{ number_format($item->quantity) }}</td>
                        <td class="unit">{{ $item->product?->unit ?? 'N/A' }}</td>
                        <td class="unit-price">{{ number_format($item->unit_price, 2) }}</td>
                        <td class="discount">{{ number_format($item->discount_percent ?? 0, 2) }}%</td>
                        <td class="total-price">{{ number_format($item->total, 2) }}</td>
                    </tr>
                @endforeach

                @php
                    $subTotal = (float) ($quotation->sub_total ?? 0);
                    $discountPercent = (float) ($quotation->discount_percent ?? 0);
                    $discountAmount = (float) ($quotation->discount_amount ?? 0);
                    $baseAfterDiscount = max(0, $subTotal - $discountAmount);
                    $installationCharge = (float) ($quotation->installation_charge ?? 0);
                    $vatPercent = (float) ($quotation->vat_percent ?? 0);
                    $taxPercent = (float) ($quotation->tax_percent ?? 0);
                    $vatAmount = (float) ($quotation->vat_amount ?? 0);
                    if ($vatAmount <= 0 && $vatPercent > 0) {
                        $vatAmount = $baseAfterDiscount * ($vatPercent / 100);
                    }
                    $taxAmount = (float) ($quotation->tax_amount ?? 0);
                    if ($taxAmount <= 0 && $taxPercent > 0) {
                        $taxAmount = $baseAfterDiscount * ($taxPercent / 100);
                    }
                    $roundOff = (float) ($quotation->round_off ?? 0);
                @endphp

                <tr class="total-row summary-row">
                    <td colspan="7">GROSS TOTAL (BDT)</td>
                    <td class="total-price">{{ number_format($subTotal, 2) }}</td>
                </tr>

                @if ($discountPercent > 0)
                    <tr class="total-row summary-row">
                        <td colspan="7">SPECIAL DISCOUNT
                            ({{ rtrim(rtrim(number_format($discountPercent, 2), '0'), '.') }}%) (BDT)</td>
                        <td class="total-price">{{ number_format($discountAmount, 2) }}</td>
                    </tr>
                @endif

                @if ($roundOff > 0)
                    <tr class="total-row summary-row">
                        <td colspan="7">ROUND OFF - (BDT)</td>
                        <td class="total-price">{{ number_format($roundOff, 2) }}</td>
                    </tr>
                @endif

                @if ($installationCharge > 0)
                    <tr class="total-row summary-row">
                        <td colspan="7">INSTALLATION CHARGE (BDT)</td>
                        <td class="total-price">{{ number_format($installationCharge, 2) }}</td>
                    </tr>
                @endif

                @if ($vatAmount > 0)
                    <tr class="total-row summary-row">
                        <td colspan="7">VAT ({{ rtrim(rtrim(number_format($vatPercent, 2), '0'), '.') }}%) (BDT)
                        </td>
                        <td class="total-price">{{ number_format($vatAmount, 2) }}</td>
                    </tr>
                @endif

                @if ($taxAmount > 0)
                    <tr class="total-row summary-row">
                        <td colspan="7">AIT ({{ rtrim(rtrim(number_format($taxPercent, 2), '0'), '.') }}%) (BDT)
                        </td>
                        <td class="total-price">{{ number_format($taxAmount, 2) }}</td>
                    </tr>
                @endif

                <tr class="total-row summary-final">
                    <td colspan="7">GRAND TOTAL (BDT)</td>
                    <td class="total-price">{{ number_format($quotation->total_amount, 2) }}</td>
                </tr>
            </tbody>
        </table>

        {{-- Amount in Words --}}
        <div class="amount-in-words">
            In Word: {{ $amount_in_words }}
        </div>

        {{-- Terms and Conditions --}}
        @if ($terms_conditions)
            <div class="terms-title">Terms and Conditions</div>
            <table class="terms-table">
                @foreach (explode("\n", $terms_conditions) as $index => $term)
                    @if (trim($term))
                        <tr>
                            <td>{{ $index + 1 }}.</td>
                            <td>{{ trim($term) }}</td>
                        </tr>
                    @endif
                @endforeach
            </table>
        @endif

        {{-- Signature Section --}}
        <div class="signature-section">
            <div class="signature-content">
                @if (!empty($signatory_photo) && file_exists($signatory_photo))
                    <p style="margin: 0 0 6px 0;">
                        <img src="{{ $signatory_photo }}" alt="Digital Signature"
                            style="max-height: 70px; max-width: 180px;">
                    </p>
                @endif
                <div class="signature-line"></div>
                <p><strong>{{ $signatory_name ?? 'N/A' }}</strong></p>
                <p>{{ $signatory_designation ?? 'N/A' }}</p>
                <p><strong>{{ $company_name ?? 'N/A' }}</strong></p>
            </div>
        </div>

    </div>{{-- end .content-wrapper --}}

</body>

</html>
