.class public final enum Lcom/avg/ui/general/s;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avg/ui/general/s;

.field public static final enum b:Lcom/avg/ui/general/s;

.field public static final enum c:Lcom/avg/ui/general/s;

.field public static final enum d:Lcom/avg/ui/general/s;

.field public static final enum e:Lcom/avg/ui/general/s;

.field public static final enum f:Lcom/avg/ui/general/s;

.field private static final synthetic h:[Lcom/avg/ui/general/s;


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

    new-instance v0, Lcom/avg/ui/general/s;

    const-string v1, "APP_LOCKER"

    invoke-direct {v0, v1, v4, v4}, Lcom/avg/ui/general/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    new-instance v0, Lcom/avg/ui/general/s;

    const-string v1, "BACKUP_APPS"

    sget-object v2, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    iget v2, v2, Lcom/avg/ui/general/s;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/avg/ui/general/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/ui/general/s;->b:Lcom/avg/ui/general/s;

    new-instance v0, Lcom/avg/ui/general/s;

    const-string v1, "CALL_MESSAGE_FILTER"

    sget-object v2, Lcom/avg/ui/general/s;->b:Lcom/avg/ui/general/s;

    iget v2, v2, Lcom/avg/ui/general/s;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/avg/ui/general/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/ui/general/s;->c:Lcom/avg/ui/general/s;

    new-instance v0, Lcom/avg/ui/general/s;

    const-string v1, "PRIVACY_WIPE_DEVICE"

    sget-object v2, Lcom/avg/ui/general/s;->c:Lcom/avg/ui/general/s;

    iget v2, v2, Lcom/avg/ui/general/s;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v7, v2}, Lcom/avg/ui/general/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/ui/general/s;->d:Lcom/avg/ui/general/s;

    new-instance v0, Lcom/avg/ui/general/s;

    const-string v1, "PRIVACY_WIPE_DATA"

    sget-object v2, Lcom/avg/ui/general/s;->d:Lcom/avg/ui/general/s;

    iget v2, v2, Lcom/avg/ui/general/s;->g:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v8, v2}, Lcom/avg/ui/general/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/ui/general/s;->e:Lcom/avg/ui/general/s;

    new-instance v0, Lcom/avg/ui/general/s;

    const-string v1, "PRIVACY_WIPE_SD"

    const/4 v2, 0x5

    sget-object v3, Lcom/avg/ui/general/s;->e:Lcom/avg/ui/general/s;

    iget v3, v3, Lcom/avg/ui/general/s;->g:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/avg/ui/general/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/ui/general/s;->f:Lcom/avg/ui/general/s;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avg/ui/general/s;

    sget-object v1, Lcom/avg/ui/general/s;->a:Lcom/avg/ui/general/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avg/ui/general/s;->b:Lcom/avg/ui/general/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avg/ui/general/s;->c:Lcom/avg/ui/general/s;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avg/ui/general/s;->d:Lcom/avg/ui/general/s;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avg/ui/general/s;->e:Lcom/avg/ui/general/s;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/avg/ui/general/s;->f:Lcom/avg/ui/general/s;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avg/ui/general/s;->h:[Lcom/avg/ui/general/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avg/ui/general/s;->g:I

    return-void
.end method

.method public static a(I)Lcom/avg/ui/general/s;
    .locals 5

    invoke-static {}, Lcom/avg/ui/general/s;->values()[Lcom/avg/ui/general/s;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    iget v4, v3, Lcom/avg/ui/general/s;->g:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No such item in Privacy view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/ui/general/s;
    .locals 1

    const-class v0, Lcom/avg/ui/general/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/ui/general/s;

    return-object v0
.end method

.method public static values()[Lcom/avg/ui/general/s;
    .locals 1

    sget-object v0, Lcom/avg/ui/general/s;->h:[Lcom/avg/ui/general/s;

    invoke-virtual {v0}, [Lcom/avg/ui/general/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/ui/general/s;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/avg/ui/general/s;->g:I

    return v0
.end method
