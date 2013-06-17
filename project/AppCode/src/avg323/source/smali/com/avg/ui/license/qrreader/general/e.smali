.class final enum Lcom/avg/ui/license/qrreader/general/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/ui/license/qrreader/general/e;

.field public static final enum b:Lcom/avg/ui/license/qrreader/general/e;

.field public static final enum c:Lcom/avg/ui/license/qrreader/general/e;

.field private static final synthetic d:[Lcom/avg/ui/license/qrreader/general/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/ui/license/qrreader/general/e;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Lcom/avg/ui/license/qrreader/general/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/license/qrreader/general/e;->a:Lcom/avg/ui/license/qrreader/general/e;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/e;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/avg/ui/license/qrreader/general/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/license/qrreader/general/e;->b:Lcom/avg/ui/license/qrreader/general/e;

    new-instance v0, Lcom/avg/ui/license/qrreader/general/e;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Lcom/avg/ui/license/qrreader/general/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/license/qrreader/general/e;->c:Lcom/avg/ui/license/qrreader/general/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avg/ui/license/qrreader/general/e;

    sget-object v1, Lcom/avg/ui/license/qrreader/general/e;->a:Lcom/avg/ui/license/qrreader/general/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/ui/license/qrreader/general/e;->b:Lcom/avg/ui/license/qrreader/general/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/ui/license/qrreader/general/e;->c:Lcom/avg/ui/license/qrreader/general/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avg/ui/license/qrreader/general/e;->d:[Lcom/avg/ui/license/qrreader/general/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/ui/license/qrreader/general/e;
    .locals 1

    const-class v0, Lcom/avg/ui/license/qrreader/general/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/license/qrreader/general/e;

    return-object v0
.end method

.method public static values()[Lcom/avg/ui/license/qrreader/general/e;
    .locals 1

    sget-object v0, Lcom/avg/ui/license/qrreader/general/e;->d:[Lcom/avg/ui/license/qrreader/general/e;

    invoke-virtual {v0}, [Lcom/avg/ui/license/qrreader/general/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/ui/license/qrreader/general/e;

    return-object v0
.end method
