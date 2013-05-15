.class public final enum Lcom/avast/android/generic/internet/c/a/ax;
.super Ljava/lang/Enum;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/generic/internet/c/a/ax;

.field public static final enum b:Lcom/avast/android/generic/internet/c/a/ax;

.field public static final enum c:Lcom/avast/android/generic/internet/c/a/ax;

.field public static final enum d:Lcom/avast/android/generic/internet/c/a/ax;

.field public static final enum e:Lcom/avast/android/generic/internet/c/a/ax;

.field private static f:Lcom/google/a/w;

.field private static final synthetic h:[Lcom/avast/android/generic/internet/c/a/ax;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ax;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/avast/android/generic/internet/c/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ax;->a:Lcom/avast/android/generic/internet/c/a/ax;

    .line 14
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ax;

    const-string v1, "SECURED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/avast/android/generic/internet/c/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ax;->b:Lcom/avast/android/generic/internet/c/a/ax;

    .line 15
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ax;

    const-string v1, "ATTENTION"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/avast/android/generic/internet/c/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ax;->c:Lcom/avast/android/generic/internet/c/a/ax;

    .line 16
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ax;

    const-string v1, "UNSECURED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/avast/android/generic/internet/c/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ax;->d:Lcom/avast/android/generic/internet/c/a/ax;

    .line 17
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ax;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/avast/android/generic/internet/c/a/ax;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ax;->e:Lcom/avast/android/generic/internet/c/a/ax;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/avast/android/generic/internet/c/a/ax;

    sget-object v1, Lcom/avast/android/generic/internet/c/a/ax;->a:Lcom/avast/android/generic/internet/c/a/ax;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/internet/c/a/ax;->b:Lcom/avast/android/generic/internet/c/a/ax;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/generic/internet/c/a/ax;->c:Lcom/avast/android/generic/internet/c/a/ax;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/generic/internet/c/a/ax;->d:Lcom/avast/android/generic/internet/c/a/ax;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/generic/internet/c/a/ax;->e:Lcom/avast/android/generic/internet/c/a/ax;

    aput-object v1, v0, v6

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ax;->h:[Lcom/avast/android/generic/internet/c/a/ax;

    .line 45
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ay;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ay;-><init>()V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/ax;->f:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p4, p0, Lcom/avast/android/generic/internet/c/a/ax;->g:I

    .line 56
    return-void
.end method

.method public static a(I)Lcom/avast/android/generic/internet/c/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->a:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0

    .line 32
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->b:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->c:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->d:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0

    .line 35
    :pswitch_4
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->e:Lcom/avast/android/generic/internet/c/a/ax;

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/ax;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/avast/android/generic/internet/c/a/ax;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/internet/c/a/ax;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/internet/c/a/ax;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/avast/android/generic/internet/c/a/ax;->h:[Lcom/avast/android/generic/internet/c/a/ax;

    invoke-virtual {v0}, [Lcom/avast/android/generic/internet/c/a/ax;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/internet/c/a/ax;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/ax;->g:I

    return v0
.end method
