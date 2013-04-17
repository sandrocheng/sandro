.class public final LLBSAPIProtocol/RESULTCODE;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final RESULT_AUTH_FAIL:LLBSAPIProtocol/RESULTCODE; = null

.field public static final RESULT_BACK_TIME_OUT:LLBSAPIProtocol/RESULTCODE; = null

.field public static final RESULT_EXCEPTION:LLBSAPIProtocol/RESULTCODE; = null

.field public static final RESULT_INPUT_ERROR:LLBSAPIProtocol/RESULTCODE; = null

.field public static final RESULT_POSITION_FAIL:LLBSAPIProtocol/RESULTCODE; = null

.field public static final RESULT_SUCC:LLBSAPIProtocol/RESULTCODE; = null

.field public static final _RESULT_AUTH_FAIL:I = 0xc9

.field public static final _RESULT_BACK_TIME_OUT:I = 0x12d

.field public static final _RESULT_EXCEPTION:I = 0x65

.field public static final _RESULT_INPUT_ERROR:I = 0xca

.field public static final _RESULT_POSITION_FAIL:I = 0x66

.field public static final _RESULT_SUCC:I

.field private static __values:[LLBSAPIProtocol/RESULTCODE;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LLBSAPIProtocol/RESULTCODE;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/RESULTCODE;->$assertionsDisabled:Z

    const/4 v0, 0x6

    new-array v0, v0, [LLBSAPIProtocol/RESULTCODE;

    sput-object v0, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    new-instance v0, LLBSAPIProtocol/RESULTCODE;

    const-string v3, "RESULT_SUCC"

    invoke-direct {v0, v2, v2, v3}, LLBSAPIProtocol/RESULTCODE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/RESULTCODE;->RESULT_SUCC:LLBSAPIProtocol/RESULTCODE;

    new-instance v0, LLBSAPIProtocol/RESULTCODE;

    const/16 v2, 0x65

    const-string v3, "RESULT_EXCEPTION"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/RESULTCODE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/RESULTCODE;->RESULT_EXCEPTION:LLBSAPIProtocol/RESULTCODE;

    new-instance v0, LLBSAPIProtocol/RESULTCODE;

    const/4 v1, 0x2

    const/16 v2, 0x66

    const-string v3, "RESULT_POSITION_FAIL"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/RESULTCODE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/RESULTCODE;->RESULT_POSITION_FAIL:LLBSAPIProtocol/RESULTCODE;

    new-instance v0, LLBSAPIProtocol/RESULTCODE;

    const/4 v1, 0x3

    const/16 v2, 0xc9

    const-string v3, "RESULT_AUTH_FAIL"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/RESULTCODE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/RESULTCODE;->RESULT_AUTH_FAIL:LLBSAPIProtocol/RESULTCODE;

    new-instance v0, LLBSAPIProtocol/RESULTCODE;

    const/4 v1, 0x4

    const/16 v2, 0xca

    const-string v3, "RESULT_INPUT_ERROR"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/RESULTCODE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/RESULTCODE;->RESULT_INPUT_ERROR:LLBSAPIProtocol/RESULTCODE;

    new-instance v0, LLBSAPIProtocol/RESULTCODE;

    const/4 v1, 0x5

    const/16 v2, 0x12d

    const-string v3, "RESULT_BACK_TIME_OUT"

    invoke-direct {v0, v1, v2, v3}, LLBSAPIProtocol/RESULTCODE;-><init>(IILjava/lang/String;)V

    sput-object v0, LLBSAPIProtocol/RESULTCODE;->RESULT_BACK_TIME_OUT:LLBSAPIProtocol/RESULTCODE;

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

    iput-object v0, p0, LLBSAPIProtocol/RESULTCODE;->__T:Ljava/lang/String;

    iput-object p3, p0, LLBSAPIProtocol/RESULTCODE;->__T:Ljava/lang/String;

    iput p2, p0, LLBSAPIProtocol/RESULTCODE;->__value:I

    sget-object v0, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LLBSAPIProtocol/RESULTCODE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LLBSAPIProtocol/RESULTCODE;->value()I

    move-result v1

    if-ne v1, p0, :cond_0

    sget-object v1, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LLBSAPIProtocol/RESULTCODE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static convert(Ljava/lang/String;)LLBSAPIProtocol/RESULTCODE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LLBSAPIProtocol/RESULTCODE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LLBSAPIProtocol/RESULTCODE;->__values:[LLBSAPIProtocol/RESULTCODE;

    aget-object v0, v1, v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v0, LLBSAPIProtocol/RESULTCODE;->$assertionsDisabled:Z

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

    iget-object v0, p0, LLBSAPIProtocol/RESULTCODE;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/RESULTCODE;->__value:I

    return v0
.end method
