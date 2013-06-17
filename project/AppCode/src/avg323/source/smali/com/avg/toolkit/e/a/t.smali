.class final enum Lcom/avg/toolkit/e/a/t;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/toolkit/e/a/t;

.field public static final enum b:Lcom/avg/toolkit/e/a/t;

.field public static final enum c:Lcom/avg/toolkit/e/a/t;

.field public static final enum d:Lcom/avg/toolkit/e/a/t;

.field public static final enum e:Lcom/avg/toolkit/e/a/t;

.field public static final enum f:Lcom/avg/toolkit/e/a/t;

.field private static final synthetic g:[Lcom/avg/toolkit/e/a/t;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/avg/toolkit/e/a/t;

    const-string v1, "LIC_FV_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/avg/toolkit/e/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/a/t;->a:Lcom/avg/toolkit/e/a/t;

    new-instance v0, Lcom/avg/toolkit/e/a/t;

    const-string v1, "LIC_FV_0"

    invoke-direct {v0, v1, v4}, Lcom/avg/toolkit/e/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/a/t;->b:Lcom/avg/toolkit/e/a/t;

    new-instance v0, Lcom/avg/toolkit/e/a/t;

    const-string v1, "LIC_FV_1"

    invoke-direct {v0, v1, v5}, Lcom/avg/toolkit/e/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/a/t;->c:Lcom/avg/toolkit/e/a/t;

    new-instance v0, Lcom/avg/toolkit/e/a/t;

    const-string v1, "LIC_FV_2"

    invoke-direct {v0, v1, v6}, Lcom/avg/toolkit/e/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/a/t;->d:Lcom/avg/toolkit/e/a/t;

    new-instance v0, Lcom/avg/toolkit/e/a/t;

    const-string v1, "LIC_FV_3"

    invoke-direct {v0, v1, v7}, Lcom/avg/toolkit/e/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/a/t;->e:Lcom/avg/toolkit/e/a/t;

    new-instance v0, Lcom/avg/toolkit/e/a/t;

    const-string v1, "LIC_FV_4"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avg/toolkit/e/a/t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avg/toolkit/e/a/t;->f:Lcom/avg/toolkit/e/a/t;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avg/toolkit/e/a/t;

    sget-object v1, Lcom/avg/toolkit/e/a/t;->a:Lcom/avg/toolkit/e/a/t;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/toolkit/e/a/t;->b:Lcom/avg/toolkit/e/a/t;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/toolkit/e/a/t;->c:Lcom/avg/toolkit/e/a/t;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/toolkit/e/a/t;->d:Lcom/avg/toolkit/e/a/t;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avg/toolkit/e/a/t;->e:Lcom/avg/toolkit/e/a/t;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avg/toolkit/e/a/t;->f:Lcom/avg/toolkit/e/a/t;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/toolkit/e/a/t;->g:[Lcom/avg/toolkit/e/a/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/toolkit/e/a/t;
    .locals 1

    const-class v0, Lcom/avg/toolkit/e/a/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e/a/t;

    return-object v0
.end method

.method public static values()[Lcom/avg/toolkit/e/a/t;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/e/a/t;->g:[Lcom/avg/toolkit/e/a/t;

    invoke-virtual {v0}, [Lcom/avg/toolkit/e/a/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/toolkit/e/a/t;

    return-object v0
.end method
