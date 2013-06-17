.class final enum Lcom/avg/ui/license/qrreader/general/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/ui/license/qrreader/general/n;

.field public static final enum b:Lcom/avg/ui/license/qrreader/general/n;

.field public static final enum c:Lcom/avg/ui/license/qrreader/general/n;

.field public static final enum d:Lcom/avg/ui/license/qrreader/general/n;

.field private static final synthetic e:[Lcom/avg/ui/license/qrreader/general/n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/ui/license/qrreader/general/n;

    const-string v1, "NATIVE_APP_INTENT"

    invoke-direct {v0, v1, v2}, Lcom/avg/ui/license/qrreader/general/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/license/qrreader/general/n;->a:Lcom/avg/ui/license/qrreader/general/n;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/n;

    const-string v1, "PRODUCT_SEARCH_LINK"

    invoke-direct {v0, v1, v3}, Lcom/avg/ui/license/qrreader/general/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/license/qrreader/general/n;->b:Lcom/avg/ui/license/qrreader/general/n;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/n;

    const-string v1, "ZXING_LINK"

    invoke-direct {v0, v1, v4}, Lcom/avg/ui/license/qrreader/general/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/license/qrreader/general/n;->c:Lcom/avg/ui/license/qrreader/general/n;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/n;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/avg/ui/license/qrreader/general/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/license/qrreader/general/n;->d:Lcom/avg/ui/license/qrreader/general/n;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avg/ui/license/qrreader/general/n;

    sget-object v1, Lcom/avg/ui/license/qrreader/general/n;->a:Lcom/avg/ui/license/qrreader/general/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/ui/license/qrreader/general/n;->b:Lcom/avg/ui/license/qrreader/general/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/ui/license/qrreader/general/n;->c:Lcom/avg/ui/license/qrreader/general/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/ui/license/qrreader/general/n;->d:Lcom/avg/ui/license/qrreader/general/n;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avg/ui/license/qrreader/general/n;->e:[Lcom/avg/ui/license/qrreader/general/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/ui/license/qrreader/general/n;
    .locals 1

    const-class v0, Lcom/avg/ui/license/qrreader/general/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/license/qrreader/general/n;

    return-object v0
.end method

.method public static values()[Lcom/avg/ui/license/qrreader/general/n;
    .locals 1

    sget-object v0, Lcom/avg/ui/license/qrreader/general/n;->e:[Lcom/avg/ui/license/qrreader/general/n;

    invoke-virtual {v0}, [Lcom/avg/ui/license/qrreader/general/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/ui/license/qrreader/general/n;

    return-object v0
.end method
