.class public final LQQPIM/EMarketList;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EML_91Helper:LQQPIM/EMarketList; = null

.field public static final EML_AnZhi:LQQPIM/EMarketList; = null

.field public static final EML_AppChina:LQQPIM/EMarketList; = null

.field public static final EML_Baidu:LQQPIM/EMarketList; = null

.field public static final EML_GFan:LQQPIM/EMarketList; = null

.field public static final EML_Google:LQQPIM/EMarketList; = null

.field public static final EML_HiApk:LQQPIM/EMarketList; = null

.field public static final EML_WanDouJia:LQQPIM/EMarketList; = null

.field public static final _EML_91Helper:I = 0x5

.field public static final _EML_AnZhi:I = 0x2

.field public static final _EML_AppChina:I = 0x3

.field public static final _EML_Baidu:I = 0x8

.field public static final _EML_GFan:I = 0x4

.field public static final _EML_Google:I = 0x7

.field public static final _EML_HiApk:I = 0x1

.field public static final _EML_WanDouJia:I = 0x6

.field private static __values:[LQQPIM/EMarketList;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, LQQPIM/EMarketList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EMarketList;->$assertionsDisabled:Z

    const/16 v0, 0x8

    new-array v0, v0, [LQQPIM/EMarketList;

    sput-object v0, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const-string v3, "EML_HiApk"

    invoke-direct {v0, v2, v1, v3}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_HiApk:LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const-string v2, "EML_AnZhi"

    invoke-direct {v0, v1, v4, v2}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_AnZhi:LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const-string v1, "EML_AppChina"

    invoke-direct {v0, v4, v5, v1}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_AppChina:LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const-string v1, "EML_GFan"

    invoke-direct {v0, v5, v6, v1}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_GFan:LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const/4 v1, 0x5

    const-string v2, "EML_91Helper"

    invoke-direct {v0, v6, v1, v2}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_91Helper:LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const/4 v1, 0x5

    const/4 v2, 0x6

    const-string v3, "EML_WanDouJia"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_WanDouJia:LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const/4 v1, 0x6

    const/4 v2, 0x7

    const-string v3, "EML_Google"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_Google:LQQPIM/EMarketList;

    new-instance v0, LQQPIM/EMarketList;

    const/4 v1, 0x7

    const/16 v2, 0x8

    const-string v3, "EML_Baidu"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EMarketList;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EMarketList;->EML_Baidu:LQQPIM/EMarketList;

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

    iput-object v0, p0, LQQPIM/EMarketList;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EMarketList;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EMarketList;->__value:I

    sget-object v0, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EMarketList;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EMarketList;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EMarketList;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EMarketList;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EMarketList;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EMarketList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EMarketList;->__values:[LQQPIM/EMarketList;

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

    iget-object v0, p0, LQQPIM/EMarketList;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EMarketList;->__value:I

    return v0
.end method
