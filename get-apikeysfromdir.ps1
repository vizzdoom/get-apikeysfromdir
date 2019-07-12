﻿$patterns = @(
"(xox[p|b|o|a]-[0-9]{12}-[0-9]{12}-[0-9]{12}-[a-z0-9]{32})",
"AKIA[0-9A-Z]{16}",
"amzn\\.mws\\.[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}",
"AKIA[0-9A-Z]{16}",
"EAACEdEose0cBA[0-9A-Za-z]+",
"[f|F][a|A][c|C][e|E][b|B][o|O][o|O][k|K].*[0-9a-f]{32}",
"[g|G][i|I][t|T][h|H][u|U][b|B].*['|\`"][0-9a-zA-Z]{35,40}",
"[a|A][p|P][i|I][_]?[k|K][e|E][y|Y].*['|\`"][0-9a-zA-Z]{32,45}",
"[s|S][e|E][c|C][r|R][e|E][t|T].*['|\`"][0-9a-zA-Z]{32,45}",
"AIza[0-9A-Za-z\\-_]{35}",
"\`"type\`": \`"service_account\`"",
"[h|H][e|E][r|R][o|O][k|K][u|U].*[0-9A-F]{8}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{4}-[0-9A-F]{12}",
"[0-9a-f]{32}-us[0-9]{1,2}",
"key-[0-9a-zA-Z]{32}",
"[a-zA-Z]{3,10}://[^/\\s:@]{3,20}:[^/\\s:@]{3,20}@.{1,100}[\`"'\\s]",
"access_token\\$production\\$[0-9a-z]{16}\\$[0-9a-f]{32}",
"sk_live_[0-9a-z]{32}",
"https://hooks.slack.com/services/T[a-zA-Z0-9_]{8}/B[a-zA-Z0-9_]{8}/[a-zA-Z0-9_]{24}",
"sk_live_[0-9a-zA-Z]{24}",
"rk_live_[0-9a-zA-Z]{24}",
"sq0atp-[0-9A-Za-z\\-_]{22}",
"sq0csp-[0-9A-Za-z\\-_]{43}",
"SK[0-9a-fA-F]{32}",
"[t|T][w|W][i|I][t|T][t|T][e|E][r|R].*[1-9][0-9]+-[0-9a-zA-Z]{40}",
"[t|T][w|W][i|I][t|T][t|T][e|E][r|R].*['|\`"][0-9a-zA-Z]{35,44}['|\`"]"
);

$sources = @(
"Slack Token",
"Amazon AWS Access Key ID",
"Amazon MWS Auth Token",
"AWS API Key",
"Facebook Access Token",
"Facebook OAuth",
"GitHub",
"Generic API Key",
"Generic Secret",
"Google API Key",
"Google (GCP) Service-account",
"Heroku API Key",
"MailChimp API Key",
"Mailgun API Key",
"Password in URL",
"PayPal Braintree Access Token",
"Picatic API Key",
"Slack Webhook",
"Stripe API Key",
"Stripe Restricted API Key",
"Square Access Token",
"Square OAuth Secret",
"Twilio API Key",
"Twitter Access Token",
"Twitter OAuth"
);


for ($i=0; $i -lt $patterns.Length; $i++){
    Get-ChildItem -recurse -Path $Args[0] | select-string -Pattern $patterns[$i] -AllMatches | ForEach-Object {"[!] "+$sources[$i]+": "+$_.Matches.Value}}