.class public final LQQPIM/ConnectType;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final CT_GPRS:LQQPIM/ConnectType;

.field public static final CT_GPRS_NET:LQQPIM/ConnectType;

.field public static final CT_GPRS_WAP:LQQPIM/ConnectType;

.field public static final CT_NONE:LQQPIM/ConnectType;

.field public static final CT_WIFI:LQQPIM/ConnectType;

.field private static __values:[LQQPIM/ConnectType;


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

    const-class v0, LQQPIM/ConnectType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ConnectType;->$assertionsDisabled:Z

    const/4 v0, 0x5

    new-array v0, v0, [LQQPIM/ConnectType;

    sput-object v0, LQQPIM/ConnectType;->__values:[LQQPIM/ConnectType;

    new-instance v0, LQQPIM/ConnectType;

    const-string v3, "CT_NONE"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    new-instance v0, LQQPIM/ConnectType;

    const-string v2, "CT_GPRS"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ConnectType;->CT_GPRS:LQQPIM/ConnectType;

    new-instance v0, LQQPIM/ConnectType;

    const-string v1, "CT_WIFI"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    new-instance v0, LQQPIM/ConnectType;

    const-string v1, "CT_GPRS_WAP"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ConnectType;->CT_GPRS_WAP:LQQPIM/ConnectType;

    new-instance v0, LQQPIM/ConnectType;

    const-string v1, "CT_GPRS_NET"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/ConnectType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ConnectType;->CT_GPRS_NET:LQQPIM/ConnectType;

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

    iput-object v0, p0, LQQPIM/ConnectType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ConnectType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ConnectType;->__value:I

    sget-object v0, LQQPIM/ConnectType;->__values:[LQQPIM/ConnectType;

    aput-object p0, v0, p1

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ConnectType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ConnectType;->__value:I

    return v0
.end method
