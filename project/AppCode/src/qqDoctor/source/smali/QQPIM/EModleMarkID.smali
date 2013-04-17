.class public final LQQPIM/EModleMarkID;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EMM_Around:LQQPIM/EModleMarkID; = null

.field public static final EMM_CPU:LQQPIM/EModleMarkID; = null

.field public static final EMM_End:LQQPIM/EModleMarkID; = null

.field public static final EMM_Media:LQQPIM/EModleMarkID; = null

.field public static final EMM_Memory:LQQPIM/EModleMarkID; = null

.field public static final EMM_ModelTop:LQQPIM/EModleMarkID; = null

.field public static final EMM_None:LQQPIM/EModleMarkID; = null

.field public static final EMM_TOTAL:LQQPIM/EModleMarkID; = null

.field public static final _EMM_Around:I = 0x6

.field public static final _EMM_CPU:I = 0x2

.field public static final _EMM_End:I = 0x7

.field public static final _EMM_Media:I = 0x3

.field public static final _EMM_Memory:I = 0x4

.field public static final _EMM_ModelTop:I = 0x5

.field public static final _EMM_None:I = 0x0

.field public static final _EMM_TOTAL:I = 0x1

.field private static __values:[LQQPIM/EModleMarkID;


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

    const-class v0, LQQPIM/EModleMarkID;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EModleMarkID;->$assertionsDisabled:Z

    const/16 v0, 0x8

    new-array v0, v0, [LQQPIM/EModleMarkID;

    sput-object v0, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const-string v3, "EMM_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_None:LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const-string v2, "EMM_TOTAL"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_TOTAL:LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const-string v1, "EMM_CPU"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_CPU:LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const-string v1, "EMM_Media"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_Media:LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const-string v1, "EMM_Memory"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_Memory:LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EMM_ModelTop"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_ModelTop:LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EMM_Around"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_Around:LQQPIM/EModleMarkID;

    new-instance v0, LQQPIM/EModleMarkID;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EMM_End"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EModleMarkID;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EModleMarkID;->EMM_End:LQQPIM/EModleMarkID;

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

    iput-object v0, p0, LQQPIM/EModleMarkID;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EModleMarkID;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EModleMarkID;->__value:I

    sget-object v0, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EModleMarkID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EModleMarkID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EModleMarkID;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EModleMarkID;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EModleMarkID;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EModleMarkID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EModleMarkID;->__values:[LQQPIM/EModleMarkID;

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

    iget-object v0, p0, LQQPIM/EModleMarkID;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EModleMarkID;->__value:I

    return v0
.end method
