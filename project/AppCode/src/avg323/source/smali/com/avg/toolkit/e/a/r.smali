.class public final enum Lcom/avg/toolkit/e/a/r;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/toolkit/e/a/r;

.field public static final enum b:Lcom/avg/toolkit/e/a/r;

.field public static final enum c:Lcom/avg/toolkit/e/a/r;

.field private static final synthetic e:[Lcom/avg/toolkit/e/a/r;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/avg/toolkit/e/a/r;

    const-string v1, "LIC_EX_UNDEFINED"

    invoke-direct {v0, v1, v2, v2}, Lcom/avg/toolkit/e/a/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/r;->a:Lcom/avg/toolkit/e/a/r;

    new-instance v0, Lcom/avg/toolkit/e/a/r;

    const-string v1, "LIC_EX_VALIDITY_PERIOD"

    invoke-direct {v0, v1, v3, v3}, Lcom/avg/toolkit/e/a/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/r;->b:Lcom/avg/toolkit/e/a/r;

    new-instance v0, Lcom/avg/toolkit/e/a/r;

    const-string v1, "LIC_EX_FIXED_DATE"

    invoke-direct {v0, v1, v4, v4}, Lcom/avg/toolkit/e/a/r;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/r;->c:Lcom/avg/toolkit/e/a/r;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avg/toolkit/e/a/r;

    sget-object v1, Lcom/avg/toolkit/e/a/r;->a:Lcom/avg/toolkit/e/a/r;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/toolkit/e/a/r;->b:Lcom/avg/toolkit/e/a/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/toolkit/e/a/r;->c:Lcom/avg/toolkit/e/a/r;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avg/toolkit/e/a/r;->e:[Lcom/avg/toolkit/e/a/r;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avg/toolkit/e/a/r;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/toolkit/e/a/r;
    .locals 1

    const-class v0, Lcom/avg/toolkit/e/a/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e/a/r;

    return-object v0
.end method

.method public static values()[Lcom/avg/toolkit/e/a/r;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/e/a/r;->e:[Lcom/avg/toolkit/e/a/r;

    invoke-virtual {v0}, [Lcom/avg/toolkit/e/a/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/toolkit/e/a/r;

    return-object v0
.end method
