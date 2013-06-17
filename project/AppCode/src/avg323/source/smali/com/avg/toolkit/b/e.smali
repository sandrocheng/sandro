.class public final enum Lcom/avg/toolkit/b/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/toolkit/b/e;

.field public static final enum b:Lcom/avg/toolkit/b/e;

.field public static final enum c:Lcom/avg/toolkit/b/e;

.field public static final enum d:Lcom/avg/toolkit/b/e;

.field private static final synthetic f:[Lcom/avg/toolkit/b/e;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/avg/toolkit/b/e;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v5, v2}, Lcom/avg/toolkit/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/b/e;->a:Lcom/avg/toolkit/b/e;

    new-instance v0, Lcom/avg/toolkit/b/e;

    const-string v1, "REGULAR"

    invoke-direct {v0, v1, v2, v3}, Lcom/avg/toolkit/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    new-instance v0, Lcom/avg/toolkit/b/e;

    const-string v1, "ASAP"

    invoke-direct {v0, v1, v3, v4}, Lcom/avg/toolkit/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    new-instance v0, Lcom/avg/toolkit/b/e;

    const-string v1, "ELEVATED"

    invoke-direct {v0, v1, v4, v6}, Lcom/avg/toolkit/b/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/b/e;->d:Lcom/avg/toolkit/b/e;

    new-array v0, v6, [Lcom/avg/toolkit/b/e;

    sget-object v1, Lcom/avg/toolkit/b/e;->a:Lcom/avg/toolkit/b/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avg/toolkit/b/e;->d:Lcom/avg/toolkit/b/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avg/toolkit/b/e;->f:[Lcom/avg/toolkit/b/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avg/toolkit/b/e;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/toolkit/b/e;
    .locals 1

    const-class v0, Lcom/avg/toolkit/b/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public static values()[Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->f:[Lcom/avg/toolkit/b/e;

    invoke-virtual {v0}, [Lcom/avg/toolkit/b/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/toolkit/b/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/avg/toolkit/b/e;->e:I

    return v0
.end method
