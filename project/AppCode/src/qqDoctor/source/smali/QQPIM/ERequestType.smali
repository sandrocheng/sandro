.class public final LQQPIM/ERequestType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ERT_CloudCheck:LQQPIM/ERequestType; = null

.field public static final ERT_GetSoftInfo:LQQPIM/ERequestType; = null

.field public static final ERT_GetSoftInfoNoDesc:LQQPIM/ERequestType; = null

.field public static final ERT_ReportAllSoft:LQQPIM/ERequestType; = null

.field public static final ERT_ReportFeature:LQQPIM/ERequestType; = null

.field public static final ERT_Report_Cloud_Get:LQQPIM/ERequestType; = null

.field public static final _ERT_CloudCheck:I = 0x1

.field public static final _ERT_GetSoftInfo:I = 0x2

.field public static final _ERT_GetSoftInfoNoDesc:I = 0x4

.field public static final _ERT_ReportAllSoft:I = 0x5

.field public static final _ERT_ReportFeature:I = 0x0

.field public static final _ERT_Report_Cloud_Get:I = 0x3

.field private static __values:[LQQPIM/ERequestType;


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

    const-class v0, LQQPIM/ERequestType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/ERequestType;->$assertionsDisabled:Z

    const/4 v0, 0x6

    new-array v0, v0, [LQQPIM/ERequestType;

    sput-object v0, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

    new-instance v0, LQQPIM/ERequestType;

    const-string v3, "ERT_ReportFeature"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/ERequestType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ERequestType;->ERT_ReportFeature:LQQPIM/ERequestType;

    new-instance v0, LQQPIM/ERequestType;

    const-string v2, "ERT_CloudCheck"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/ERequestType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ERequestType;->ERT_CloudCheck:LQQPIM/ERequestType;

    new-instance v0, LQQPIM/ERequestType;

    const-string v1, "ERT_GetSoftInfo"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/ERequestType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ERequestType;->ERT_GetSoftInfo:LQQPIM/ERequestType;

    new-instance v0, LQQPIM/ERequestType;

    const-string v1, "ERT_Report_Cloud_Get"

    invoke-direct {v0, v5, v5, v1}, LQQPIM/ERequestType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ERequestType;->ERT_Report_Cloud_Get:LQQPIM/ERequestType;

    new-instance v0, LQQPIM/ERequestType;

    const-string v1, "ERT_GetSoftInfoNoDesc"

    invoke-direct {v0, v6, v6, v1}, LQQPIM/ERequestType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ERequestType;->ERT_GetSoftInfoNoDesc:LQQPIM/ERequestType;

    new-instance v0, LQQPIM/ERequestType;

    const/4 v1, 0x5

    const/4 v2, 0x5

    const-string v3, "ERT_ReportAllSoft"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/ERequestType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/ERequestType;->ERT_ReportAllSoft:LQQPIM/ERequestType;

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

    iput-object v0, p0, LQQPIM/ERequestType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/ERequestType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/ERequestType;->__value:I

    sget-object v0, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/ERequestType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ERequestType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ERequestType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

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

.method public static convert(Ljava/lang/String;)LQQPIM/ERequestType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/ERequestType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/ERequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/ERequestType;->__values:[LQQPIM/ERequestType;

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

    iget-object v0, p0, LQQPIM/ERequestType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/ERequestType;->__value:I

    return v0
.end method
