.class public final LLBSAPIProtocol/POITYPE;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final POI_BANK:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_BEAUTY:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_CAR:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_COM:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_CULTURE:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_ENTM:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_ESTATE:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_FOOD:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_HEALTH:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_HOTEL:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_INFRA:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_ORG:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_PLACE:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_SCHOOL:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_SERVICE:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_SHOPPING:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_SPORT:LLBSAPIProtocol/POITYPE; = null

.field public static final POI_TOUR:LLBSAPIProtocol/POITYPE; = null

.field public static final _POI_BANK:I = 0x3d090

.field public static final _POI_BEAUTY:I = 0x29810

.field public static final _POI_CAR:I = 0x2e630

.field public static final _POI_COM:I = 0x1adb0

.field public static final _POI_CULTURE:I = 0x38270

.field public static final _POI_ENTM:I = 0x27100

.field public static final _POI_ESTATE:I = 0x445c0

.field public static final _POI_FOOD:I = 0x186a0

.field public static final _POI_HEALTH:I = 0x30d40

.field public static final _POI_HOTEL:I = 0x33450

.field public static final _POI_INFRA:I = 0x41eb0

.field public static final _POI_ORG:I = 0x1d4c0

.field public static final _POI_PLACE:I = 0x3f7a0

.field public static final _POI_SCHOOL:I = 0x3a980

.field public static final _POI_SERVICE:I = 0x222e0

.field public static final _POI_SHOPPING:I = 0x1fbd0

.field public static final _POI_SPORT:I = 0x2bf20

.field public static final _POI_TOUR:I = 0x35b60

.field private static __values:[LLBSAPIProtocol/POITYPE;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LLBSAPIProtocol/POITYPE;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/POITYPE;->$assertionsDisabled:Z

    const/16 v0, 0x12

    new-array v0, v0, [LLBSAPIProtocol/POITYPE;

    sput-object v0, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const v3, 0x186a0

    const-string v4, "POI_FOOD"

    invoke-direct {v0, v2, v3, v4}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_FOOD:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const v2, 0x1adb0

    const-string v3, "POI_COM"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_COM:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/4 v1, 0x2

    const v2, 0x1d4c0

    const-string v3, "POI_ORG"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_ORG:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/4 v1, 0x3

    const v2, 0x1fbd0

    const-string v3, "POI_SHOPPING"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_SHOPPING:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/4 v1, 0x4

    const v2, 0x222e0

    const-string v3, "POI_SERVICE"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_SERVICE:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/4 v1, 0x5

    const v2, 0x27100

    const-string v3, "POI_ENTM"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_ENTM:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/4 v1, 0x6

    const v2, 0x29810

    const-string v3, "POI_BEAUTY"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_BEAUTY:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/4 v1, 0x7

    const v2, 0x2bf20

    const-string v3, "POI_SPORT"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_SPORT:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0x8

    const v2, 0x2e630

    const-string v3, "POI_CAR"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_CAR:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0x9

    const v2, 0x30d40

    const-string v3, "POI_HEALTH"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_HEALTH:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0xa

    const v2, 0x33450

    const-string v3, "POI_HOTEL"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_HOTEL:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0xb

    const v2, 0x35b60

    const-string v3, "POI_TOUR"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_TOUR:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0xc

    const v2, 0x38270

    const-string v3, "POI_CULTURE"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_CULTURE:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0xd

    const v2, 0x3a980

    const-string v3, "POI_SCHOOL"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_SCHOOL:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0xe

    const v2, 0x3d090

    const-string v3, "POI_BANK"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_BANK:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0xf

    const v2, 0x3f7a0

    const-string v3, "POI_PLACE"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_PLACE:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0x10

    const v2, 0x41eb0

    const-string v3, "POI_INFRA"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_INFRA:LLBSAPIProtocol/POITYPE;

    new-instance v0, LLBSAPIProtocol/POITYPE;

    const/16 v1, 0x11

    const v2, 0x445c0

    const-string v3, "POI_ESTATE"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/POITYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/POITYPE;->POI_ESTATE:LLBSAPIProtocol/POITYPE;

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

    iput-object v0, p0, LLBSAPIProtocol/POITYPE;->__T:Ljava/lang/String;

    iput-object p3, p0, LLBSAPIProtocol/POITYPE;->__T:Ljava/lang/String;

    iput p2, p0, LLBSAPIProtocol/POITYPE;->__value:I

    sget-object v0, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LLBSAPIProtocol/POITYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LLBSAPIProtocol/POITYPE;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    sget-object v1, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LLBSAPIProtocol/POITYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LLBSAPIProtocol/POITYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LLBSAPIProtocol/POITYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LLBSAPIProtocol/POITYPE;->__values:[LLBSAPIProtocol/POITYPE;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LLBSAPIProtocol/POITYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/POITYPE;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/POITYPE;->__value:I

    return v0
.end method
