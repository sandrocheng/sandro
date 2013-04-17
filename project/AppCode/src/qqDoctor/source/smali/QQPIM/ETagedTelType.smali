.class public final LQQPIM/ETagedTelType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ETAG_TYPE_CHEAT:LQQPIM/ETagedTelType; = null

.field public static final ETAG_TYPE_HOUSE_AGT:LQQPIM/ETagedTelType; = null

.field public static final ETAG_TYPE_INSURANCE:LQQPIM/ETagedTelType; = null

.field public static final ETAG_TYPE_MAX:LQQPIM/ETagedTelType; = null

.field public static final ETAG_TYPE_NONE:LQQPIM/ETagedTelType; = null

.field public static final ETAG_TYPE_OTHER:LQQPIM/ETagedTelType; = null

.field public static final ETAG_TYPE_SALES:LQQPIM/ETagedTelType; = null

.field public static final _ETAG_TYPE_CHEAT:I = 0x36

.field public static final _ETAG_TYPE_HOUSE_AGT:I = 0x33

.field public static final _ETAG_TYPE_INSURANCE:I = 0x34

.field public static final _ETAG_TYPE_MAX:I = 0x37

.field public static final _ETAG_TYPE_NONE:I = 0x0

.field public static final _ETAG_TYPE_OTHER:I = 0x32

.field public static final _ETAG_TYPE_SALES:I = 0x35

.field private static __values:[LQQPIM/ETagedTelType;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/ETagedTelType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ETagedTelType;->$assertionsDisabled:Z

    const/4 v0, 0x7

    new-array v0, v0, [LQQPIM/ETagedTelType;

    sput-object v0, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

    new-instance v0, LQQPIM/ETagedTelType;

    const-string v3, "ETAG_TYPE_NONE"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ETagedTelType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ETagedTelType;->ETAG_TYPE_NONE:LQQPIM/ETagedTelType;

    new-instance v0, LQQPIM/ETagedTelType;

    const/16 v2, 0x32

    const-string v3, "ETAG_TYPE_OTHER"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ETagedTelType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ETagedTelType;->ETAG_TYPE_OTHER:LQQPIM/ETagedTelType;

    new-instance v0, LQQPIM/ETagedTelType;

    const/4 v1, 0x2

    const/16 v2, 0x33

    const-string v3, "ETAG_TYPE_HOUSE_AGT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ETagedTelType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ETagedTelType;->ETAG_TYPE_HOUSE_AGT:LQQPIM/ETagedTelType;

    new-instance v0, LQQPIM/ETagedTelType;

    const/4 v1, 0x3

    const/16 v2, 0x34

    const-string v3, "ETAG_TYPE_INSURANCE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ETagedTelType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ETagedTelType;->ETAG_TYPE_INSURANCE:LQQPIM/ETagedTelType;

    new-instance v0, LQQPIM/ETagedTelType;

    const/4 v1, 0x4

    const/16 v2, 0x35

    const-string v3, "ETAG_TYPE_SALES"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ETagedTelType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ETagedTelType;->ETAG_TYPE_SALES:LQQPIM/ETagedTelType;

    new-instance v0, LQQPIM/ETagedTelType;

    const/4 v1, 0x5

    const/16 v2, 0x36

    const-string v3, "ETAG_TYPE_CHEAT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ETagedTelType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ETagedTelType;->ETAG_TYPE_CHEAT:LQQPIM/ETagedTelType;

    new-instance v0, LQQPIM/ETagedTelType;

    const/4 v1, 0x6

    const/16 v2, 0x37

    const-string v3, "ETAG_TYPE_MAX"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ETagedTelType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ETagedTelType;->ETAG_TYPE_MAX:LQQPIM/ETagedTelType;

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

    iput-object v0, p0, LQQPIM/ETagedTelType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ETagedTelType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ETagedTelType;->__value:I

    sget-object v0, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/ETagedTelType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ETagedTelType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ETagedTelType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

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

.method public static convert(Ljava/lang/String;)LQQPIM/ETagedTelType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ETagedTelType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ETagedTelType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/ETagedTelType;->__values:[LQQPIM/ETagedTelType;

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

    iget-object v0, p0, LQQPIM/ETagedTelType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ETagedTelType;->__value:I

    return v0
.end method
