.class public final LQQPIM/EResCode;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ERC_Account_Err:LQQPIM/EResCode; = null

.field public static final ERC_Account_Not_Actived:LQQPIM/EResCode; = null

.field public static final ERC_Account_Not_Exist:LQQPIM/EResCode; = null

.field public static final ERC_Account_Not_Valid:LQQPIM/EResCode; = null

.field public static final ERC_Data_Get_Activity_Err:LQQPIM/EResCode; = null

.field public static final ERC_Data_Get_Module_Err:LQQPIM/EResCode; = null

.field public static final ERC_Data_Get_Person_Err:LQQPIM/EResCode; = null

.field public static final ERC_Data_Init_Person_Err:LQQPIM/EResCode; = null

.field public static final ERC_Data_Null:LQQPIM/EResCode; = null

.field public static final ERC_ERROR:LQQPIM/EResCode; = null

.field public static final ERC_OK:LQQPIM/EResCode; = null

.field public static final ERC_Points_Expired:LQQPIM/EResCode; = null

.field public static final ERC_Points_Expired_Client_Notice:LQQPIM/EResCode; = null

.field public static final ERC_Points_Invalid:LQQPIM/EResCode; = null

.field public static final ERC_Points_No_Enough:LQQPIM/EResCode; = null

.field public static final ERC_Points_Ope_Invalid:LQQPIM/EResCode; = null

.field public static final ERC_Req_Config_ID_Invalid:LQQPIM/EResCode; = null

.field public static final _ERC_Account_Err:I = 0xc9

.field public static final _ERC_Account_Not_Actived:I = 0xca

.field public static final _ERC_Account_Not_Exist:I = 0xcc

.field public static final _ERC_Account_Not_Valid:I = 0xcb

.field public static final _ERC_Data_Get_Activity_Err:I = 0x12e

.field public static final _ERC_Data_Get_Module_Err:I = 0x12f

.field public static final _ERC_Data_Get_Person_Err:I = 0x12d

.field public static final _ERC_Data_Init_Person_Err:I = 0x130

.field public static final _ERC_Data_Null:I = 0x131

.field public static final _ERC_ERROR:I = 0x1

.field public static final _ERC_OK:I = 0x0

.field public static final _ERC_Points_Expired:I = 0x68

.field public static final _ERC_Points_Expired_Client_Notice:I = -0x68

.field public static final _ERC_Points_Invalid:I = 0x66

.field public static final _ERC_Points_No_Enough:I = 0x65

.field public static final _ERC_Points_Ope_Invalid:I = 0x67

.field public static final _ERC_Req_Config_ID_Invalid:I = 0x1f5

.field private static __values:[LQQPIM/EResCode;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EResCode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EResCode;->$assertionsDisabled:Z

    const/16 v0, 0x11

    new-array v0, v0, [LQQPIM/EResCode;

    sput-object v0, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const-string v3, "ERC_OK"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_OK:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const-string v2, "ERC_ERROR"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_ERROR:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/4 v1, 0x2

    const/16 v2, 0x65

    const-string v3, "ERC_Points_No_Enough"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Points_No_Enough:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/4 v1, 0x3

    const/16 v2, 0x66

    const-string v3, "ERC_Points_Invalid"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Points_Invalid:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/4 v1, 0x4

    const/16 v2, 0x67

    const-string v3, "ERC_Points_Ope_Invalid"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Points_Ope_Invalid:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/4 v1, 0x5

    const/16 v2, 0x68

    const-string v3, "ERC_Points_Expired"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Points_Expired:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/4 v1, 0x6

    const/16 v2, -0x68

    const-string v3, "ERC_Points_Expired_Client_Notice"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Points_Expired_Client_Notice:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/4 v1, 0x7

    const/16 v2, 0xc9

    const-string v3, "ERC_Account_Err"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Account_Err:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0x8

    const/16 v2, 0xca

    const-string v3, "ERC_Account_Not_Actived"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Account_Not_Actived:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0x9

    const/16 v2, 0xcb

    const-string v3, "ERC_Account_Not_Valid"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Account_Not_Valid:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0xa

    const/16 v2, 0xcc

    const-string v3, "ERC_Account_Not_Exist"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Account_Not_Exist:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0xb

    const/16 v2, 0x12d

    const-string v3, "ERC_Data_Get_Person_Err"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Data_Get_Person_Err:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0xc

    const/16 v2, 0x12e

    const-string v3, "ERC_Data_Get_Activity_Err"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Data_Get_Activity_Err:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0xd

    const/16 v2, 0x12f

    const-string v3, "ERC_Data_Get_Module_Err"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Data_Get_Module_Err:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0xe

    const/16 v2, 0x130

    const-string v3, "ERC_Data_Init_Person_Err"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Data_Init_Person_Err:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0xf

    const/16 v2, 0x131

    const-string v3, "ERC_Data_Null"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Data_Null:LQQPIM/EResCode;

    new-instance v0, LQQPIM/EResCode;

    const/16 v1, 0x10

    const/16 v2, 0x1f5

    const-string v3, "ERC_Req_Config_ID_Invalid"

    invoke-direct {v0, v1, v2, v3}, LQQPIM/EResCode;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EResCode;->ERC_Req_Config_ID_Invalid:LQQPIM/EResCode;

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

    iput-object v0, p0, LQQPIM/EResCode;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EResCode;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EResCode;->__value:I

    sget-object v0, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EResCode;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EResCode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EResCode;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EResCode;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EResCode;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EResCode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EResCode;->__values:[LQQPIM/EResCode;

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

    iget-object v0, p0, LQQPIM/EResCode;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EResCode;->__value:I

    return v0
.end method
