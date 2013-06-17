.class public final enum Lcom/avg/toolkit/e/a/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/toolkit/e/a/o;

.field public static final enum b:Lcom/avg/toolkit/e/a/o;

.field public static final enum c:Lcom/avg/toolkit/e/a/o;

.field public static final enum d:Lcom/avg/toolkit/e/a/o;

.field public static final enum e:Lcom/avg/toolkit/e/a/o;

.field public static final enum f:Lcom/avg/toolkit/e/a/o;

.field private static final synthetic h:[Lcom/avg/toolkit/e/a/o;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/avg/toolkit/e/a/o;

    const-string v1, "LIC_AVG_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/avg/toolkit/e/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    new-instance v0, Lcom/avg/toolkit/e/a/o;

    const-string v1, "LIC_AVG_70"

    invoke-direct {v0, v1, v5, v5}, Lcom/avg/toolkit/e/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/o;->b:Lcom/avg/toolkit/e/a/o;

    new-instance v0, Lcom/avg/toolkit/e/a/o;

    const-string v1, "LIC_AVG_75"

    invoke-direct {v0, v1, v6, v6}, Lcom/avg/toolkit/e/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/o;->c:Lcom/avg/toolkit/e/a/o;

    new-instance v0, Lcom/avg/toolkit/e/a/o;

    const-string v1, "LIC_AVG_8"

    invoke-direct {v0, v1, v7, v7}, Lcom/avg/toolkit/e/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/o;->d:Lcom/avg/toolkit/e/a/o;

    new-instance v0, Lcom/avg/toolkit/e/a/o;

    const-string v1, "LIC_AVG_9"

    invoke-direct {v0, v1, v8, v8}, Lcom/avg/toolkit/e/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/o;->e:Lcom/avg/toolkit/e/a/o;

    new-instance v0, Lcom/avg/toolkit/e/a/o;

    const-string v1, "LIC_AVG_10"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avg/toolkit/e/a/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/e/a/o;->f:Lcom/avg/toolkit/e/a/o;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avg/toolkit/e/a/o;

    sget-object v1, Lcom/avg/toolkit/e/a/o;->a:Lcom/avg/toolkit/e/a/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/toolkit/e/a/o;->b:Lcom/avg/toolkit/e/a/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/toolkit/e/a/o;->c:Lcom/avg/toolkit/e/a/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avg/toolkit/e/a/o;->d:Lcom/avg/toolkit/e/a/o;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avg/toolkit/e/a/o;->e:Lcom/avg/toolkit/e/a/o;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avg/toolkit/e/a/o;->f:Lcom/avg/toolkit/e/a/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/toolkit/e/a/o;->h:[Lcom/avg/toolkit/e/a/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avg/toolkit/e/a/o;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/toolkit/e/a/o;
    .locals 1

    const-class v0, Lcom/avg/toolkit/e/a/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/e/a/o;

    return-object v0
.end method

.method public static values()[Lcom/avg/toolkit/e/a/o;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/e/a/o;->h:[Lcom/avg/toolkit/e/a/o;

    invoke-virtual {v0}, [Lcom/avg/toolkit/e/a/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/toolkit/e/a/o;

    return-object v0
.end method
