.class public final LQQPIM/Act;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final E_ACT_CHANGE_CODE:LQQPIM/Act; = null

.field public static final E_ACT_CHANGE_PORT:LQQPIM/Act; = null

.field public static final E_ACT_CHANGE_TIME:LQQPIM/Act; = null

.field public static final E_ACT_CHANGE_TIMEOUT:LQQPIM/Act; = null

.field public static final E_ACT_CLOSE:LQQPIM/Act; = null

.field public static final E_ACT_CODE_AGAIN:LQQPIM/Act; = null

.field public static final E_ACT_FREQUNCY:LQQPIM/Act; = null

.field public static final E_ACT_MAX:LQQPIM/Act; = null

.field public static final E_ACT_MIN:LQQPIM/Act; = null

.field public static final E_ACT_NOTHING:LQQPIM/Act; = null

.field public static final E_ACT_REGET_TEMPLATE:LQQPIM/Act; = null

.field public static final E_ACT_REVISE_IMMEDI:LQQPIM/Act; = null

.field public static final E_ACT_UPDATE_CODE:LQQPIM/Act; = null

.field public static final _E_ACT_CHANGE_CODE:I = 0x4

.field public static final _E_ACT_CHANGE_PORT:I = 0x9

.field public static final _E_ACT_CHANGE_TIME:I = 0x7

.field public static final _E_ACT_CHANGE_TIMEOUT:I = 0x8

.field public static final _E_ACT_CLOSE:I = 0x5

.field public static final _E_ACT_CODE_AGAIN:I = 0xa

.field public static final _E_ACT_FREQUNCY:I = 0x2

.field public static final _E_ACT_MAX:I = 0xc

.field public static final _E_ACT_MIN:I = 0x0

.field public static final _E_ACT_NOTHING:I = 0x1

.field public static final _E_ACT_REGET_TEMPLATE:I = 0xb

.field public static final _E_ACT_REVISE_IMMEDI:I = 0x6

.field public static final _E_ACT_UPDATE_CODE:I = 0x3

.field private static __values:[LQQPIM/Act;


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

    const-class v0, LQQPIM/Act;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/Act;->$assertionsDisabled:Z

    const/16 v0, 0xd

    new-array v0, v0, [LQQPIM/Act;

    sput-object v0, LQQPIM/Act;->__values:[LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const-string v3, "E_ACT_MIN"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_MIN:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const-string v2, "E_ACT_NOTHING"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_NOTHING:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const-string v1, "E_ACT_FREQUNCY"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_FREQUNCY:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const-string v1, "E_ACT_UPDATE_CODE"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_UPDATE_CODE:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const-string v1, "E_ACT_CHANGE_CODE"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_CHANGE_CODE:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "E_ACT_CLOSE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_CLOSE:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "E_ACT_REVISE_IMMEDI"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_REVISE_IMMEDI:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "E_ACT_CHANGE_TIME"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_CHANGE_TIME:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "E_ACT_CHANGE_TIMEOUT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_CHANGE_TIMEOUT:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "E_ACT_CHANGE_PORT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_CHANGE_PORT:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/16 v1, 0xa

    const/16 v2, 0xa

    const-string v3, "E_ACT_CODE_AGAIN"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_CODE_AGAIN:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/16 v1, 0xb

    const/16 v2, 0xb

    const-string v3, "E_ACT_REGET_TEMPLATE"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_REGET_TEMPLATE:LQQPIM/Act;

    new-instance v0, LQQPIM/Act;

    const/16 v1, 0xc

    const/16 v2, 0xc

    const-string v3, "E_ACT_MAX"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/Act;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/Act;->E_ACT_MAX:LQQPIM/Act;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, LQQPIM/Act;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/Act;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/Act;->__value:I

    sget-object v0, LQQPIM/Act;->__values:[LQQPIM/Act;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/Act;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/Act;->__values:[LQQPIM/Act;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/Act;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/Act;->__values:[LQQPIM/Act;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/Act;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/Act;->__values:[LQQPIM/Act;

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

.method public static convert(Ljava/lang/String;)LQQPIM/Act;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/Act;->__values:[LQQPIM/Act;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/Act;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/Act;->__values:[LQQPIM/Act;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/Act;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/Act;->__values:[LQQPIM/Act;

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

    iget-object v0, p0, LQQPIM/Act;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/Act;->__value:I

    return v0
.end method
