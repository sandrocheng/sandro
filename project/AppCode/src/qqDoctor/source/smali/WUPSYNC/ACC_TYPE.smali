.class public final LWUPSYNC/ACC_TYPE;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ACC_EMAIL:LWUPSYNC/ACC_TYPE; = null

.field public static final ACC_MOBILE:LWUPSYNC/ACC_TYPE; = null

.field public static final ACC_UIN:LWUPSYNC/ACC_TYPE; = null

.field public static final _ACC_EMAIL:I = 0x3

.field public static final _ACC_MOBILE:I = 0x2

.field public static final _ACC_UIN:I = 0x1

.field private static __values:[LWUPSYNC/ACC_TYPE;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v0, LWUPSYNC/ACC_TYPE;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LWUPSYNC/ACC_TYPE;->$assertionsDisabled:Z

    new-array v0, v5, [LWUPSYNC/ACC_TYPE;

    sput-object v0, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

    new-instance v0, LWUPSYNC/ACC_TYPE;

    const-string v3, "ACC_UIN"

    invoke-direct {v0, v2, v1, v3}, LWUPSYNC/ACC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/ACC_TYPE;->ACC_UIN:LWUPSYNC/ACC_TYPE;

    new-instance v0, LWUPSYNC/ACC_TYPE;

    const-string v2, "ACC_MOBILE"

    invoke-direct {v0, v1, v4, v2}, LWUPSYNC/ACC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/ACC_TYPE;->ACC_MOBILE:LWUPSYNC/ACC_TYPE;

    new-instance v0, LWUPSYNC/ACC_TYPE;

    const-string v1, "ACC_EMAIL"

    invoke-direct {v0, v4, v5, v1}, LWUPSYNC/ACC_TYPE;-><init>(IILjava/lang/String;)V

    sput-object v0, LWUPSYNC/ACC_TYPE;->ACC_EMAIL:LWUPSYNC/ACC_TYPE;

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

    iput-object v0, p0, LWUPSYNC/ACC_TYPE;->__T:Ljava/lang/String;

    iput-object p3, p0, LWUPSYNC/ACC_TYPE;->__T:Ljava/lang/String;

    iput p2, p0, LWUPSYNC/ACC_TYPE;->__value:I

    sget-object v0, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LWUPSYNC/ACC_TYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LWUPSYNC/ACC_TYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LWUPSYNC/ACC_TYPE;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

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

.method public static convert(Ljava/lang/String;)LWUPSYNC/ACC_TYPE;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LWUPSYNC/ACC_TYPE;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LWUPSYNC/ACC_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LWUPSYNC/ACC_TYPE;->__values:[LWUPSYNC/ACC_TYPE;

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

    iget-object v0, p0, LWUPSYNC/ACC_TYPE;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LWUPSYNC/ACC_TYPE;->__value:I

    return v0
.end method