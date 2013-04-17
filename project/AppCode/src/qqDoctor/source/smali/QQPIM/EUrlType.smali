.class public final LQQPIM/EUrlType;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final EUT_Page:LQQPIM/EUrlType; = null

.field public static final EUT_Pkg:LQQPIM/EUrlType; = null

.field public static final _EUT_Page:I = 0x1

.field public static final _EUT_Pkg:I

.field private static __values:[LQQPIM/EUrlType;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EUrlType;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EUrlType;->$assertionsDisabled:Z

    const/4 v0, 0x2

    new-array v0, v0, [LQQPIM/EUrlType;

    sput-object v0, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

    new-instance v0, LQQPIM/EUrlType;

    const-string v3, "EUT_Pkg"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EUrlType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUrlType;->EUT_Pkg:LQQPIM/EUrlType;

    new-instance v0, LQQPIM/EUrlType;

    const-string v2, "EUT_Page"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EUrlType;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EUrlType;->EUT_Page:LQQPIM/EUrlType;

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

    iput-object v0, p0, LQQPIM/EUrlType;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EUrlType;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EUrlType;->__value:I

    sget-object v0, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EUrlType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EUrlType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EUrlType;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EUrlType;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EUrlType;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EUrlType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EUrlType;->__values:[LQQPIM/EUrlType;

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

    iget-object v0, p0, LQQPIM/EUrlType;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EUrlType;->__value:I

    return v0
.end method
