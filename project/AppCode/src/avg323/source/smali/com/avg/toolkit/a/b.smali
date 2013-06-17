.class public final enum Lcom/avg/toolkit/a/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/toolkit/a/b;

.field public static final enum b:Lcom/avg/toolkit/a/b;

.field public static final enum c:Lcom/avg/toolkit/a/b;

.field public static final enum d:Lcom/avg/toolkit/a/b;

.field public static final enum e:Lcom/avg/toolkit/a/b;

.field public static final enum f:Lcom/avg/toolkit/a/b;

.field public static final enum g:Lcom/avg/toolkit/a/b;

.field private static final synthetic i:[Lcom/avg/toolkit/a/b;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/avg/toolkit/a/b;

    const-string v1, "REGULAR_REPORT"

    invoke-direct {v0, v1, v4, v4}, Lcom/avg/toolkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/a/b;->a:Lcom/avg/toolkit/a/b;

    new-instance v0, Lcom/avg/toolkit/a/b;

    const-string v1, "INSTALLATION_SUCCESS"

    invoke-direct {v0, v1, v5, v5}, Lcom/avg/toolkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/a/b;->b:Lcom/avg/toolkit/a/b;

    new-instance v0, Lcom/avg/toolkit/a/b;

    const-string v1, "INSTALLATION_FAILED"

    invoke-direct {v0, v1, v6, v6}, Lcom/avg/toolkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/a/b;->c:Lcom/avg/toolkit/a/b;

    new-instance v0, Lcom/avg/toolkit/a/b;

    const-string v1, "UNINSTALLATION"

    invoke-direct {v0, v1, v7, v7}, Lcom/avg/toolkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/a/b;->d:Lcom/avg/toolkit/a/b;

    new-instance v0, Lcom/avg/toolkit/a/b;

    const-string v1, "LICENSE_CHANGE"

    invoke-direct {v0, v1, v8, v8}, Lcom/avg/toolkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/a/b;->e:Lcom/avg/toolkit/a/b;

    new-instance v0, Lcom/avg/toolkit/a/b;

    const-string v1, "ERROR_REPORTING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/avg/toolkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/a/b;->f:Lcom/avg/toolkit/a/b;

    new-instance v0, Lcom/avg/toolkit/a/b;

    const-string v1, "HEARTBEAT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/avg/toolkit/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/toolkit/a/b;->g:Lcom/avg/toolkit/a/b;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/avg/toolkit/a/b;

    sget-object v1, Lcom/avg/toolkit/a/b;->a:Lcom/avg/toolkit/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/toolkit/a/b;->b:Lcom/avg/toolkit/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/toolkit/a/b;->c:Lcom/avg/toolkit/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avg/toolkit/a/b;->d:Lcom/avg/toolkit/a/b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avg/toolkit/a/b;->e:Lcom/avg/toolkit/a/b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avg/toolkit/a/b;->f:Lcom/avg/toolkit/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avg/toolkit/a/b;->g:Lcom/avg/toolkit/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/toolkit/a/b;->i:[Lcom/avg/toolkit/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avg/toolkit/a/b;->h:I

    return-void
.end method

.method static synthetic a(Lcom/avg/toolkit/a/b;)I
    .locals 1

    iget v0, p0, Lcom/avg/toolkit/a/b;->h:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/toolkit/a/b;
    .locals 1

    const-class v0, Lcom/avg/toolkit/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/a/b;

    return-object v0
.end method

.method public static values()[Lcom/avg/toolkit/a/b;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/a/b;->i:[Lcom/avg/toolkit/a/b;

    invoke-virtual {v0}, [Lcom/avg/toolkit/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/toolkit/a/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/avg/toolkit/a/b;->h:I

    return v0
.end method
