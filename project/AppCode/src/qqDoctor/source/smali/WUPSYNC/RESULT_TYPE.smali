.class public final LWUPSYNC/RESULT_TYPE;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final RESULT_LOGINKEY_EXPIRED:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_PIMPWD_NEEDED:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_PIMPWD_NOT_SET:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_PIMPWD_PASSWORD:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_PIMPWD_SAME_QQPWD:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_PIMPWD_STATUS:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_SERVER_ERROR:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_SID_EXPIRED:LWUPSYNC/RESULT_TYPE; = null

.field public static final RESULT_SUCC:LWUPSYNC/RESULT_TYPE; = null

.field public static final _RESULT_LOGINKEY_EXPIRED:I = 0x2

.field public static final _RESULT_PIMPWD_NEEDED:I = 0x66

.field public static final _RESULT_PIMPWD_NOT_SET:I = 0x67

.field public static final _RESULT_PIMPWD_PASSWORD:I = 0x6b

.field public static final _RESULT_PIMPWD_SAME_QQPWD:I = 0x6e

.field public static final _RESULT_PIMPWD_STATUS:I = 0x69

.field public static final _RESULT_SERVER_ERROR:I = 0xc8

.field public static final _RESULT_SID_EXPIRED:I = 0x1

.field public static final _RESULT_SUCC:I

.field private static __values:[LWUPSYNC/RESULT_TYPE;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LWUPSYNC/RESULT_TYPE;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LWUPSYNC/RESULT_TYPE;->$assertionsDisabled:Z

    const/16 v0, 0x9

    new-array v0, v0, [LWUPSYNC/RESULT_TYPE;

    sput-object v0, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const-string v3, "RESULT_SUCC"

    invoke-direct {v0, v2, v2, v3}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_SUCC:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const-string v2, "RESULT_SID_EXPIRED"

    invoke-direct {v0, v1, v1, v2}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_SID_EXPIRED:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const-string v1, "RESULT_LOGINKEY_EXPIRED"

    invoke-direct {v0, v4, v4, v1}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_LOGINKEY_EXPIRED:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const/4 v1, 0x3

    const/16 v2, 0x66

    const-string v3, "RESULT_PIMPWD_NEEDED"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_PIMPWD_NEEDED:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const/4 v1, 0x4

    const/16 v2, 0x67

    const-string v3, "RESULT_PIMPWD_NOT_SET"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_PIMPWD_NOT_SET:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const/4 v1, 0x5

    const/16 v2, 0x69

    const-string v3, "RESULT_PIMPWD_STATUS"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_PIMPWD_STATUS:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const/4 v1, 0x6

    const/16 v2, 0x6b

    const-string v3, "RESULT_PIMPWD_PASSWORD"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_PIMPWD_PASSWORD:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const/4 v1, 0x7

    const/16 v2, 0x6e

    const-string v3, "RESULT_PIMPWD_SAME_QQPWD"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_PIMPWD_SAME_QQPWD:LWUPSYNC/RESULT_TYPE;

    new-instance v0, LWUPSYNC/RESULT_TYPE;

    const/16 v1, 0x8

    const/16 v2, 0xc8

    const-string v3, "RESULT_SERVER_ERROR"

    invoke-direct {v0, v1, v2, v3}, LWUPSYNC/RESULT_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/RESULT_TYPE;->RESULT_SERVER_ERROR:LWUPSYNC/RESULT_TYPE;

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

    iput-object v0, p0, LWUPSYNC/RESULT_TYPE;->__T:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/RESULT_TYPE;->__T:Ljava/lang/String;

    iput p2, p0, LWUPSYNC/RESULT_TYPE;->__value:I

    sget-object v0, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LWUPSYNC/RESULT_TYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LWUPSYNC/RESULT_TYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LWUPSYNC/RESULT_TYPE;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

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

.method public static convert(Ljava/lang/String;)LWUPSYNC/RESULT_TYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LWUPSYNC/RESULT_TYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LWUPSYNC/RESULT_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LWUPSYNC/RESULT_TYPE;->__values:[LWUPSYNC/RESULT_TYPE;

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

    iget-object v0, p0, LWUPSYNC/RESULT_TYPE;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LWUPSYNC/RESULT_TYPE;->__value:I

    return v0
.end method
