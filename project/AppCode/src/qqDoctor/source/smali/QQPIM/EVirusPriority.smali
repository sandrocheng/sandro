.class public final LQQPIM/EVirusPriority;
.super Ljava/lang/Object;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final VP_High:LQQPIM/EVirusPriority; = null

.field public static final VP_Low:LQQPIM/EVirusPriority; = null

.field public static final VP_Mid:LQQPIM/EVirusPriority; = null

.field public static final _VP_High:I = 0x2

.field public static final _VP_Low:I = 0x0

.field public static final _VP_Mid:I = 0x1

.field private static __values:[LQQPIM/EVirusPriority;


# instance fields
.field private __T:Ljava/lang/String;

.field private __value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v0, LQQPIM/EVirusPriority;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, LQQPIM/EVirusPriority;->$assertionsDisabled:Z

    const/4 v0, 0x3

    new-array v0, v0, [LQQPIM/EVirusPriority;

    sput-object v0, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

    new-instance v0, LQQPIM/EVirusPriority;

    const-string v3, "VP_Low"

    invoke-direct {v0, v2, v2, v3}, LQQPIM/EVirusPriority;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EVirusPriority;->VP_Low:LQQPIM/EVirusPriority;

    new-instance v0, LQQPIM/EVirusPriority;

    const-string v2, "VP_Mid"

    invoke-direct {v0, v1, v1, v2}, LQQPIM/EVirusPriority;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EVirusPriority;->VP_Mid:LQQPIM/EVirusPriority;

    new-instance v0, LQQPIM/EVirusPriority;

    const-string v1, "VP_High"

    invoke-direct {v0, v4, v4, v1}, LQQPIM/EVirusPriority;-><init>(IILjava/lang/String;)V

    sput-object v0, LQQPIM/EVirusPriority;->VP_High:LQQPIM/EVirusPriority;

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

    iput-object v0, p0, LQQPIM/EVirusPriority;->__T:Ljava/lang/String;

    iput-object p3, p0, LQQPIM/EVirusPriority;->__T:Ljava/lang/String;

    iput p2, p0, LQQPIM/EVirusPriority;->__value:I

    sget-object v0, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

    aput-object p0, v0, p1

    return-void
.end method

.method public static convert(I)LQQPIM/EVirusPriority;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EVirusPriority;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EVirusPriority;->value()I

    move-result v1

    if-ne v1, p0, :cond_1

    sget-object v1, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

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

.method public static convert(Ljava/lang/String;)LQQPIM/EVirusPriority;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, LQQPIM/EVirusPriority;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v1, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

    aget-object v1, v1, v0

    invoke-virtual {v1}, LQQPIM/EVirusPriority;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, LQQPIM/EVirusPriority;->__values:[LQQPIM/EVirusPriority;

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

    iget-object v0, p0, LQQPIM/EVirusPriority;->__T:Ljava/lang/String;

    return-object v0
.end method

.method public final value()I
    .locals 1

    iget v0, p0, LQQPIM/EVirusPriority;->__value:I

    return v0
.end method
