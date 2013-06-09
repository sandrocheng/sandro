.class final enum Lorg/antivirus/license/qrreader/general/IntentSource;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lorg/antivirus/license/qrreader/general/IntentSource;

.field public static final enum NATIVE_APP_INTENT:Lorg/antivirus/license/qrreader/general/IntentSource;

.field public static final enum NONE:Lorg/antivirus/license/qrreader/general/IntentSource;

.field public static final enum PRODUCT_SEARCH_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

.field public static final enum ZXING_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/license/qrreader/general/IntentSource;

    const-string v1, "NATIVE_APP_INTENT"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/license/qrreader/general/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->NATIVE_APP_INTENT:Lorg/antivirus/license/qrreader/general/IntentSource;

    new-instance v0, Lorg/antivirus/license/qrreader/general/IntentSource;

    const-string v1, "PRODUCT_SEARCH_LINK"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/license/qrreader/general/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->PRODUCT_SEARCH_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

    new-instance v0, Lorg/antivirus/license/qrreader/general/IntentSource;

    const-string v1, "ZXING_LINK"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/license/qrreader/general/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->ZXING_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

    new-instance v0, Lorg/antivirus/license/qrreader/general/IntentSource;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lorg/antivirus/license/qrreader/general/IntentSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->NONE:Lorg/antivirus/license/qrreader/general/IntentSource;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/antivirus/license/qrreader/general/IntentSource;

    sget-object v1, Lorg/antivirus/license/qrreader/general/IntentSource;->NATIVE_APP_INTENT:Lorg/antivirus/license/qrreader/general/IntentSource;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/license/qrreader/general/IntentSource;->PRODUCT_SEARCH_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/license/qrreader/general/IntentSource;->ZXING_LINK:Lorg/antivirus/license/qrreader/general/IntentSource;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/license/qrreader/general/IntentSource;->NONE:Lorg/antivirus/license/qrreader/general/IntentSource;

    aput-object v1, v0, v5

    sput-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->$VALUES:[Lorg/antivirus/license/qrreader/general/IntentSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/license/qrreader/general/IntentSource;
    .locals 1

    const-class v0, Lorg/antivirus/license/qrreader/general/IntentSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/license/qrreader/general/IntentSource;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/license/qrreader/general/IntentSource;
    .locals 1

    sget-object v0, Lorg/antivirus/license/qrreader/general/IntentSource;->$VALUES:[Lorg/antivirus/license/qrreader/general/IntentSource;

    invoke-virtual {v0}, [Lorg/antivirus/license/qrreader/general/IntentSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/license/qrreader/general/IntentSource;

    return-object v0
.end method
