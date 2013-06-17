.class public final enum Lcom/avg/ui/general/q;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/ui/general/q;

.field public static final enum b:Lcom/avg/ui/general/q;

.field public static final enum c:Lcom/avg/ui/general/q;

.field private static final synthetic d:[Lcom/avg/ui/general/q;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/ui/general/q;

    const-string v1, "eTablet"

    invoke-direct {v0, v1, v2}, Lcom/avg/ui/general/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/general/q;->a:Lcom/avg/ui/general/q;

    new-instance v0, Lcom/avg/ui/general/q;

    const-string v1, "eHandheld"

    invoke-direct {v0, v1, v3}, Lcom/avg/ui/general/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/general/q;->b:Lcom/avg/ui/general/q;

    new-instance v0, Lcom/avg/ui/general/q;

    const-string v1, "eNook"

    invoke-direct {v0, v1, v4}, Lcom/avg/ui/general/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/ui/general/q;->c:Lcom/avg/ui/general/q;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avg/ui/general/q;

    sget-object v1, Lcom/avg/ui/general/q;->a:Lcom/avg/ui/general/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/ui/general/q;->b:Lcom/avg/ui/general/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/ui/general/q;->c:Lcom/avg/ui/general/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avg/ui/general/q;->d:[Lcom/avg/ui/general/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/ui/general/q;
    .locals 1

    const-class v0, Lcom/avg/ui/general/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/q;

    return-object v0
.end method

.method public static values()[Lcom/avg/ui/general/q;
    .locals 1

    sget-object v0, Lcom/avg/ui/general/q;->d:[Lcom/avg/ui/general/q;

    invoke-virtual {v0}, [Lcom/avg/ui/general/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/ui/general/q;

    return-object v0
.end method
