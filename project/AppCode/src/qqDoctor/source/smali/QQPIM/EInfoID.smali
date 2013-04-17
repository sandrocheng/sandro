.class public final LQQPIM/EInfoID;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EI_CPU:LQQPIM/EInfoID; = null

.field public static final EI_DEVICE:LQQPIM/EInfoID; = null

.field public static final EI_End:LQQPIM/EInfoID; = null

.field public static final EI_GPU:LQQPIM/EInfoID; = null

.field public static final EI_MOBILE:LQQPIM/EInfoID; = null

.field public static final EI_None:LQQPIM/EInfoID; = null

.field public static final EI_SCREEN:LQQPIM/EInfoID; = null

.field public static final EI_STORAGE:LQQPIM/EInfoID; = null

.field public static final _EI_CPU:I = 0x2

.field public static final _EI_DEVICE:I = 0x6

.field public static final _EI_End:I = 0x7

.field public static final _EI_GPU:I = 0x4

.field public static final _EI_MOBILE:I = 0x1

.field public static final _EI_None:I = 0x0

.field public static final _EI_SCREEN:I = 0x3

.field public static final _EI_STORAGE:I = 0x5

.field private static __values:[LQQPIM/EInfoID;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EInfoID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EInfoID;->$assertionsDisabled:Z

    const/16 v0, 0x8

    new-array v0, v0, [LQQPIM/EInfoID;

    sput-object v0, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const-string v3, "EI_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_None:LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const-string v2, "EI_MOBILE"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_MOBILE:LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const-string v1, "EI_CPU"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_CPU:LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const-string v1, "EI_SCREEN"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_SCREEN:LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const-string v1, "EI_GPU"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_GPU:LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EI_STORAGE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_STORAGE:LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EI_DEVICE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_DEVICE:LQQPIM/EInfoID;

    new-instance v0, LQQPIM/EInfoID;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EI_End"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EInfoID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EInfoID;->EI_End:LQQPIM/EInfoID;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/EInfoID;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EInfoID;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EInfoID;->__value:I

    sget-object v0, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EInfoID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EInfoID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EInfoID;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LQQPIM/EInfoID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EInfoID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EInfoID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EInfoID;->__values:[LQQPIM/EInfoID;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/EInfoID;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EInfoID;->__value:I

    return v0
.end method
