.class Lcom/google/a/a/a/au;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/a/a/a/as;

.field private static final b:Lcom/google/a/a/a/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/a/a/a/av;

    invoke-direct {v0}, Lcom/google/a/a/a/av;-><init>()V

    sput-object v0, Lcom/google/a/a/a/au;->a:Lcom/google/a/a/a/as;

    new-instance v0, Lcom/google/a/a/a/aw;

    invoke-direct {v0}, Lcom/google/a/a/a/aw;-><init>()V

    sput-object v0, Lcom/google/a/a/a/au;->b:Lcom/google/a/a/a/as;

    return-void
.end method

.method public static a(Lcom/google/a/a/a/ar;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "apiVersion"

    const-string v1, "v"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "libraryVersion"

    const-string v1, "_v"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "anonymizeIp"

    const-string v1, "aip"

    const-string v2, "0"

    sget-object v3, Lcom/google/a/a/a/au;->a:Lcom/google/a/a/a/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "trackingId"

    const-string v1, "tid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "hitType"

    const-string v1, "t"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "sessionControl"

    const-string v1, "sc"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "adSenseAdMobHitId"

    const-string v1, "a"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "usage"

    const-string v1, "_u"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "title"

    const-string v1, "dt"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "referrer"

    const-string v1, "dr"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "language"

    const-string v1, "ul"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "encoding"

    const-string v1, "de"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "page"

    const-string v1, "dp"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "screenColors"

    const-string v1, "sd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "screenResolution"

    const-string v1, "sr"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "viewportSize"

    const-string v1, "vp"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "javaEnabled"

    const-string v1, "je"

    const-string v2, "1"

    sget-object v3, Lcom/google/a/a/a/au;->a:Lcom/google/a/a/a/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "flashVersion"

    const-string v1, "fl"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "clientId"

    const-string v1, "cid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "campaignName"

    const-string v1, "cn"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "campaignSource"

    const-string v1, "cs"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "campaignMedium"

    const-string v1, "cm"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "campaignKeyword"

    const-string v1, "ck"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "campaignContent"

    const-string v1, "cc"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "campaignId"

    const-string v1, "ci"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "gclid"

    const-string v1, "gclid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "dclid"

    const-string v1, "dclid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "gmob_t"

    const-string v1, "gmob_t"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "eventCategory"

    const-string v1, "ec"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "eventAction"

    const-string v1, "ea"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "eventLabel"

    const-string v1, "el"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "eventValue"

    const-string v1, "ev"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "nonInteraction"

    const-string v1, "ni"

    const-string v2, "0"

    sget-object v3, Lcom/google/a/a/a/au;->a:Lcom/google/a/a/a/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "socialNetwork"

    const-string v1, "sn"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "socialAction"

    const-string v1, "sa"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "socialTarget"

    const-string v1, "st"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "appName"

    const-string v1, "an"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "appVersion"

    const-string v1, "av"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "description"

    const-string v1, "cd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "appId"

    const-string v1, "aid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "appInstallerId"

    const-string v1, "aiid"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "transactionId"

    const-string v1, "ti"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "transactionAffiliation"

    const-string v1, "ta"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "transactionShipping"

    const-string v1, "ts"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "transactionTotal"

    const-string v1, "tr"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "transactionTax"

    const-string v1, "tt"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "currencyCode"

    const-string v1, "cu"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "itemPrice"

    const-string v1, "ip"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "itemCode"

    const-string v1, "ic"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "itemName"

    const-string v1, "in"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "itemCategory"

    const-string v1, "iv"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "itemQuantity"

    const-string v1, "iq"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "exDescription"

    const-string v1, "exd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "exFatal"

    const-string v1, "exf"

    const-string v2, "1"

    sget-object v3, Lcom/google/a/a/a/au;->a:Lcom/google/a/a/a/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "timingVar"

    const-string v1, "utv"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "timingValue"

    const-string v1, "utt"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "timingCategory"

    const-string v1, "utc"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "timingLabel"

    const-string v1, "utl"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "sampleRate"

    const-string v1, "sf"

    const-string v2, "100"

    sget-object v3, Lcom/google/a/a/a/au;->b:Lcom/google/a/a/a/as;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "hitTime"

    const-string v1, "ht"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "customDimension"

    const-string v1, "cd"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "customMetric"

    const-string v1, "cm"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    const-string v0, "contentGrouping"

    const-string v1, "cg"

    invoke-virtual {p0, v0, v1, v4, v4}, Lcom/google/a/a/a/ar;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/a/a/as;)V

    return-void
.end method
