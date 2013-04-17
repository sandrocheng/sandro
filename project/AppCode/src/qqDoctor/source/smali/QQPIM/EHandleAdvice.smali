.class public final LQQPIM/EHandleAdvice;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final HA_Check_Page:LQQPIM/EHandleAdvice; = null

.field public static final HA_Check_Page_Update:LQQPIM/EHandleAdvice; = null

.field public static final HA_Clear:LQQPIM/EHandleAdvice; = null

.field public static final HA_Clear_Update:LQQPIM/EHandleAdvice; = null

.field public static final HA_Down_Tool:LQQPIM/EHandleAdvice; = null

.field public static final HA_Down_Tool_Update:LQQPIM/EHandleAdvice; = null

.field public static final HA_None:LQQPIM/EHandleAdvice; = null

.field public static final HA_Update:LQQPIM/EHandleAdvice; = null

.field public static final _HA_Check_Page:I = 0x4

.field public static final _HA_Check_Page_Update:I = 0x5

.field public static final _HA_Clear:I = 0x1

.field public static final _HA_Clear_Update:I = 0x3

.field public static final _HA_Down_Tool:I = 0x6

.field public static final _HA_Down_Tool_Update:I = 0x7

.field public static final _HA_None:I = 0x0

.field public static final _HA_Update:I = 0x2

.field private static __values:[LQQPIM/EHandleAdvice;


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

    const-class v0, LQQPIM/EHandleAdvice;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EHandleAdvice;->$assertionsDisabled:Z

    const/16 v0, 0x8

    new-array v0, v0, [LQQPIM/EHandleAdvice;

    sput-object v0, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const-string v3, "HA_None"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_None:LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const-string v2, "HA_Clear"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_Clear:LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const-string v1, "HA_Update"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_Update:LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const-string v1, "HA_Clear_Update"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_Clear_Update:LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const-string v1, "HA_Check_Page"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_Check_Page:LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "HA_Check_Page_Update"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_Check_Page_Update:LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "HA_Down_Tool"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_Down_Tool:LQQPIM/EHandleAdvice;

    new-instance v0, LQQPIM/EHandleAdvice;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "HA_Down_Tool_Update"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EHandleAdvice;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EHandleAdvice;->HA_Down_Tool_Update:LQQPIM/EHandleAdvice;

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

    iput-object v0, p0, LQQPIM/EHandleAdvice;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EHandleAdvice;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EHandleAdvice;->__value:I

    sget-object v0, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EHandleAdvice;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EHandleAdvice;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EHandleAdvice;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EHandleAdvice;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EHandleAdvice;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EHandleAdvice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EHandleAdvice;->__values:[LQQPIM/EHandleAdvice;

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

    iget-object v0, p0, LQQPIM/EHandleAdvice;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EHandleAdvice;->__value:I

    return v0
.end method
