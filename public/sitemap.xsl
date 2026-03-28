<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>XML Sitemap | Eks-Cent Framework</title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <script src="https://cdn.tailwindcss.com"></script>
                <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet" />
                <style type="text/css">
                    body {
                        font-family: 'Plus Jakarta Sans', sans-serif;
                        background: radial-gradient(circle at top right, #f8fafc, #eff6ff, #fcfcfc);
                        min-height: 100vh;
                        color: #1e293b;
                    }
                    .glass {
                        background: rgba(255, 255, 255, 0.45);
                        backdrop-filter: blur(14px);
                        -webkit-backdrop-filter: blur(14px);
                        border: 1px solid rgba(255, 255, 255, 0.25);
                        box-shadow: 0 8px 32px 0 rgba(31, 38, 135, 0.07);
                    }
                    .glass-card {
                        background: rgba(255, 255, 255, 0.6);
                        backdrop-filter: blur(10px);
                        border: 1px solid rgba(255, 255, 255, 0.3);
                    }
                    tr:hover {
                        background: rgba(241, 245, 249, 0.5);
                    }
                </style>
            </head>
            <body>
                <div class="max-w-5xl mx-auto px-4 py-12">
                    <!-- Header -->
                    <div class="flex items-center justify-between mb-12">
                        <div class="flex items-center gap-3">
                            <div class="w-10 h-10 bg-blue-600 rounded-xl flex items-center justify-center text-white font-bold shadow-lg shadow-blue-200">
                                E
                            </div>
                            <h1 class="text-3xl font-bold tracking-tight text-slate-900">XML Sitemap</h1>
                        </div>
                        <a href="/" class="text-blue-600 font-medium hover:underline flex items-center gap-2">
                            <span>← Kembali ke Beranda</span>
                        </a>
                    </div>

                    <!-- Intro -->
                    <div class="glass p-8 rounded-3xl mb-10">
                        <p class="text-lg text-slate-600 leading-relaxed">
                            Ini adalah sitemap XML yang dihasilkan secara otomatis oleh <strong>Eks-Cent Framework</strong>. 
                            File ini digunakan oleh mesin pencari seperti Google untuk mengindeks halaman-halaman di situs ini dengan lebih efisien.
                        </p>
                    </div>

                    <!-- Table -->
                    <div class="glass-card rounded-2xl overflow-hidden shadow-sm">
                        <table class="w-full text-left border-collapse">
                            <thead class="bg-slate-50/50 border-b border-slate-200/60">
                                <tr>
                                    <th class="px-6 py-4 text-sm font-semibold text-slate-900">URL</th>
                                    <th class="px-6 py-4 text-sm font-semibold text-slate-900">Priority</th>
                                    <th class="px-6 py-4 text-sm font-semibold text-slate-900">Change Freq</th>
                                    <th class="px-6 py-4 text-sm font-semibold text-slate-900 text-right">Last Modified</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each select="sitemap:urlset/sitemap:url">
                                    <tr class="border-b border-slate-100/50 last:border-0 transition-colors">
                                        <td class="px-6 py-4">
                                            <a href="{sitemap:loc}" class="text-blue-600 hover:text-blue-700 font-medium break-all">
                                                <xsl:value-of select="sitemap:loc"/>
                                            </a>
                                        </td>
                                        <td class="px-6 py-4">
                                            <span class="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-medium bg-blue-100 text-blue-800">
                                                <xsl:value-of select="concat(sitemap:priority*100, '%')"/>
                                            </span>
                                        </td>
                                        <td class="px-6 py-4 text-sm text-slate-600">
                                            <xsl:value-of select="sitemap:changefreq"/>
                                        </td>
                                        <td class="px-6 py-4 text-sm text-slate-500 text-right">
                                            <xsl:value-of select="sitemap:lastmod"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                    </div>

                    <footer class="mt-12 text-center text-slate-400 text-sm">
                        <p>© 2026 Eks-Cent Docs. Generated Dynamically.</p>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
