<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Packard - Quotation</title>
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
        h6 {
            font-family: 'Times New Roman', Times, serif !important;
        }

        @page {
            margin: 0;
            size: A4 portrait;
        }

        /* Green Sidebar */
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

        /* Header */
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

        /* Footer */
        .page-footer {
            position: fixed;
            bottom: 0;
            left: 45px;
            right: 0;
            padding: 8px 20px 12px 20px;
            background: #fff;
            z-index: 10;
            width: calc(100% - 45px);
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

        .contact-text {
            display: table-cell;
            font-size: 11px;
            padding-left: 6px;
            vertical-align: middle;
        }

        /* Background Watermark - MOVED MORE TO THE RIGHT */
        .bg-wrapper {
            position: fixed;
            right: -80px;
            /* Changed: More to the right (half visible) */
            top: 180px;
            width: 420px;
            /* Slightly increased width */
            z-index: 0;
            pointer-events: none;
        }

        .bg-main {
            width: 100%;
            opacity: 0.15;
        }

        /* Main Content */
        .content-wrapper {
            margin-left: 45px;
            padding-top: 95px;
            padding-bottom: 155px;
            padding-left: 30px;
            padding-right: 30px;
            position: relative;
            z-index: 5;
        }

        .reference {
            text-align: right;
            margin-bottom: 20px;
            font-size: 12px;
        }

        .to-section p {
            margin: 2px 0;
        }

        .subject {
            margin: 15px 0;
            font-weight: bold;
        }

        .letter-body {
            margin: 15px 0;
            text-align: justify;
        }

        .additional-enclosed {
            margin: 15px 0;
        }

        /* Quotation Table */
        .quotation-title {
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
            margin: 20px 0 15px 0;
            font-size: 14px;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            font-size: 11px;
        }

        thead th {
            border: 1px solid #000;
            padding: 6px 8px;
            text-align: center;
            background-color: #f0f0f0;
            font-weight: bold;
        }

        tbody td {
            border: 1px solid #000;
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
            font-weight: 600;
        }

        .summary-final td {
            font-size: 12px;
            font-weight: bold;
        }

        /* Amount in Words */
        .amount-in-words {
            margin: 18px 0;
            padding: 10px 12px;
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            font-style: italic;
            text-align: center;
            font-weight: bold;
            page-break-inside: avoid;
        }

        /* Terms & Conditions */
        .terms-title {
            text-align: center;
            font-weight: bold;
            text-decoration: underline;
            margin: 20px 0 10px 0;
            font-size: 13px;
            page-break-inside: avoid;
        }

        .terms-table {
            width: 100%;
            margin-bottom: 30px;
            page-break-inside: avoid;
        }

        .terms-table td {
            vertical-align: top;
            padding: 5px 8px;
        }

        .terms-table td:first-child {
            width: 30px;
            font-weight: bold;
        }

        /* Signature */
        .signature-section {
            margin-top: 60px;
            page-break-inside: avoid;
        }

        .signature-content {
            width: 280px;
        }

        .signature-line {
            border-top: 1px dashed #000;
            width: 200px;
            margin: 35px 0 8px 0;
        }
    </style>
</head>

<body>

    {{-- Green Sidebar --}}
    <div class="green-shape-wrapper">
        @if (!empty($pdf_green_shape) && file_exists($pdf_green_shape))
            <img class="green-shape-img" src="{{ $pdf_green_shape }}" alt="" />
        @else
            <div style="width:45px;height:100%;background:#2d7a2d;"></div>
        @endif
    </div>

    {{-- Header --}}
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

    {{-- Footer --}}
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

    {{-- Background Watermark - Half visible, half out --}}
    @if (!empty($pdf_background_logo) && file_exists($pdf_background_logo))
        <div class="bg-wrapper">
            <img class="bg-main" src="{{ $pdf_background_logo }}" alt="" />
        </div>
    @endif

    {{-- Main Content --}}
    <div class="content-wrapper">

        {{-- Reference & Date - Fixed --}}
        <div class="reference">
            <div><strong>Ref:</strong> {{ $quotation->quotation_number ?? 'N/A' }}</div>
            <div>{{ $quotation->quotation_date?->format('F d, Y') ?? 'N/A' }}</div>
        </div>

        {{-- Recipient --}}
        <div class="to-section">
            <p>To,</p>
            @if (!empty($attention_to))
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
        @if (!empty($additional_enclosed))
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

                <tr class="total-row">
                    <td colspan="7">GROSS TOTAL (BDT)</td>
                    <td class="total-price">{{ number_format($quotation->sub_total ?? 0, 2) }}</td>
                </tr>

                @if (($quotation->discount_amount ?? 0) > 0)
                    <tr class="total-row">
                        <td colspan="7">SPECIAL DISCOUNT
                            ({{ number_format($quotation->discount_percent ?? 0, 2) }}%) (BDT)</td>
                        <td class="total-price">{{ number_format($quotation->discount_amount ?? 0, 2) }}</td>
                    </tr>
                @endif

                @if (($quotation->round_off ?? 0) > 0)
                    <tr class="total-row">
                        <td colspan="7">ROUND OFF (BDT)</td>
                        <td class="total-price">{{ number_format($quotation->round_off ?? 0, 2) }}</td>
                    </tr>
                @endif

                @if (($quotation->installation_charge ?? 0) > 0)
                    <tr class="total-row">
                        <td colspan="7">INSTALLATION CHARGE (BDT)</td>
                        <td class="total-price">{{ number_format($quotation->installation_charge ?? 0, 2) }}</td>
                    </tr>
                @endif

                @if (($quotation->vat_amount ?? 0) > 0)
                    <tr class="total-row">
                        <td colspan="7">VAT ({{ number_format($quotation->vat_percent ?? 0, 2) }}%) (BDT)</td>
                        <td class="total-price">{{ number_format($quotation->vat_amount ?? 0, 2) }}</td>
                    </tr>
                @endif

                @if (($quotation->tax_amount ?? 0) > 0)
                    <tr class="total-row">
                        <td colspan="7">AIT ({{ number_format($quotation->tax_percent ?? 0, 2) }}%) (BDT)</td>
                        <td class="total-price">{{ number_format($quotation->tax_amount ?? 0, 2) }}</td>
                    </tr>
                @endif

                <tr class="total-row summary-final">
                    <td colspan="7">GRAND TOTAL (BDT)</td>
                    <td class="total-price">{{ number_format($quotation->total_amount ?? 0, 2) }}</td>
                </tr>
            </tbody>
        </table>

        {{-- Amount in Words --}}
        @if (!empty($amount_in_words))
            <div class="amount-in-words">
                In Word: {{ $amount_in_words }}
            </div>
        @endif

        {{-- Terms and Conditions --}}
        @if (!empty($terms_conditions))
            <div style="page-break-inside: avoid;">
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
            </div>
        @endif

        {{-- Signature Section --}}
        <div class="signature-section">
            <div class="signature-content">
                @if (!empty($signatory_photo) && file_exists($signatory_photo))
                    <p style="margin-bottom: 8px;">
                        <img src="{{ $signatory_photo }}" alt="Signature" style="max-height: 70px; max-width: 180px;">
                    </p>
                @endif
                <div class="signature-line"></div>
                <p><strong>{{ $signatory_name ?? 'N/A' }}</strong></p>
                <p>{{ $signatory_designation ?? 'N/A' }}</p>
                <p><strong>{{ $company_name ?? 'N/A' }}</strong></p>
            </div>
        </div>

    </div>

</body>

</html>
