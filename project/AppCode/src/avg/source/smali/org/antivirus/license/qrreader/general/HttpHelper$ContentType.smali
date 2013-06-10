.class public final enum Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

.field public static final enum HTML:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

.field public static final enum JSON:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

.field public static final enum TEXT:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->HTML:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    new-instance v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    const-string v1, "JSON"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->JSON:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    new-instance v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->TEXT:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    sget-object v1, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->HTML:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->JSON:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->TEXT:Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->$VALUES:[Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;
    .locals 1

    const-class v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;
    .locals 1

    sget-object v0, Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->$VALUES:[Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    invoke-virtual {v0}, [Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/license/qrreader/general/HttpHelper$ContentType;

    return-object v0
.end method
