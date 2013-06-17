.class public final enum Lcom/avg/ui/general/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/ui/general/r;

.field public static final enum b:Lcom/avg/ui/general/r;

.field public static final enum c:Lcom/avg/ui/general/r;

.field private static final synthetic d:[Lcom/avg/ui/general/r;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/ui/general/r;

    const-string v1, "eRegular"

    invoke-direct {v0, v1, v2}, Lcom/avg/ui/general/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    new-instance v0, Lcom/avg/ui/general/r;

    const-string v1, "eBack"

    invoke-direct {v0, v1, v3}, Lcom/avg/ui/general/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/general/r;->b:Lcom/avg/ui/general/r;

    new-instance v0, Lcom/avg/ui/general/r;

    const-string v1, "eBackPressed"

    invoke-direct {v0, v1, v4}, Lcom/avg/ui/general/r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/general/r;->c:Lcom/avg/ui/general/r;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avg/ui/general/r;

    sget-object v1, Lcom/avg/ui/general/r;->a:Lcom/avg/ui/general/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/ui/general/r;->b:Lcom/avg/ui/general/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/ui/general/r;->c:Lcom/avg/ui/general/r;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avg/ui/general/r;->d:[Lcom/avg/ui/general/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/ui/general/r;
    .locals 1

    const-class v0, Lcom/avg/ui/general/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/r;

    return-object v0
.end method

.method public static values()[Lcom/avg/ui/general/r;
    .locals 1

    sget-object v0, Lcom/avg/ui/general/r;->d:[Lcom/avg/ui/general/r;

    invoke-virtual {v0}, [Lcom/avg/ui/general/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/ui/general/r;

    return-object v0
.end method
