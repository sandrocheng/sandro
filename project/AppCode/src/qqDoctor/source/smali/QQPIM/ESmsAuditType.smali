.class public final LQQPIM/ESmsAuditType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EMSAT_BLACK:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_CHARGE_INTERCEPT:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_CONTENT_TOO_SHORT:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_DOUBT:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_DOUBT_INTERCEPT:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_MAX:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_NORMAL:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_UNKNOWN:LQQPIM/ESmsAuditType; = null

.field public static final EMSAT_WHITE:LQQPIM/ESmsAuditType; = null

.field public static final MSAT_MIN:LQQPIM/ESmsAuditType; = null

.field public static final _EMSAT_BLACK:I = 0x3

.field public static final _EMSAT_CHARGE_INTERCEPT:I = 0x8

.field public static final _EMSAT_CONTENT_TOO_SHORT:I = 0x7

.field public static final _EMSAT_DOUBT:I = 0x4

.field public static final _EMSAT_DOUBT_INTERCEPT:I = 0x6

.field public static final _EMSAT_MAX:I = 0x9

.field public static final _EMSAT_NORMAL:I = 0x1

.field public static final _EMSAT_UNKNOWN:I = 0x5

.field public static final _EMSAT_WHITE:I = 0x2

.field public static final _MSAT_MIN:I

.field private static __values:[LQQPIM/ESmsAuditType;


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

    const-class v0, LQQPIM/ESmsAuditType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ESmsAuditType;->$assertionsDisabled:Z

    const/16 v0, 0xa

    new-array v0, v0, [LQQPIM/ESmsAuditType;

    sput-object v0, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const-string v3, "MSAT_MIN"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->MSAT_MIN:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const-string v2, "EMSAT_NORMAL"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_NORMAL:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const-string v1, "EMSAT_WHITE"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_WHITE:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const-string v1, "EMSAT_BLACK"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_BLACK:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const-string v1, "EMSAT_DOUBT"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_DOUBT:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "EMSAT_UNKNOWN"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_UNKNOWN:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const/4 v1, 0x6

    const/4 v2, 0x6

    const-string v3, "EMSAT_DOUBT_INTERCEPT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_DOUBT_INTERCEPT:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const/4 v1, 0x7

    const/4 v2, 0x7

    const-string v3, "EMSAT_CONTENT_TOO_SHORT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_CONTENT_TOO_SHORT:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const/16 v1, 0x8

    const/16 v2, 0x8

    const-string v3, "EMSAT_CHARGE_INTERCEPT"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_CHARGE_INTERCEPT:LQQPIM/ESmsAuditType;

    new-instance v0, LQQPIM/ESmsAuditType;

    const/16 v1, 0x9

    const/16 v2, 0x9

    const-string v3, "EMSAT_MAX"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ESmsAuditType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ESmsAuditType;->EMSAT_MAX:LQQPIM/ESmsAuditType;

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

    iput-object v0, p0, LQQPIM/ESmsAuditType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ESmsAuditType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ESmsAuditType;->__value:I

    sget-object v0, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/ESmsAuditType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ESmsAuditType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ESmsAuditType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

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

.method public static convert(Ljava/lang/String;)LQQPIM/ESmsAuditType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ESmsAuditType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ESmsAuditType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/ESmsAuditType;->__values:[LQQPIM/ESmsAuditType;

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

    iget-object v0, p0, LQQPIM/ESmsAuditType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ESmsAuditType;->__value:I

    return v0
.end method
