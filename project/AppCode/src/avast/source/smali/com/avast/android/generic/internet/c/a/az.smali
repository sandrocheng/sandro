.class public final enum Lcom/avast/android/generic/internet/c/a/az;
.super Ljava/lang/Enum;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/generic/internet/c/a/az;

.field public static final enum b:Lcom/avast/android/generic/internet/c/a/az;

.field public static final enum c:Lcom/avast/android/generic/internet/c/a/az;

.field private static d:Lcom/google/a/w;

.field private static final synthetic f:[Lcom/avast/android/generic/internet/c/a/az;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 63
    new-instance v0, Lcom/avast/android/generic/internet/c/a/az;

    const-string v1, "WEEKLY"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/avast/android/generic/internet/c/a/az;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/az;->a:Lcom/avast/android/generic/internet/c/a/az;

    .line 64
    new-instance v0, Lcom/avast/android/generic/internet/c/a/az;

    const-string v1, "MONTHLY"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/avast/android/generic/internet/c/a/az;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/az;->b:Lcom/avast/android/generic/internet/c/a/az;

    .line 65
    new-instance v0, Lcom/avast/android/generic/internet/c/a/az;

    const-string v1, "YEARLY"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/avast/android/generic/internet/c/a/az;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/az;->c:Lcom/avast/android/generic/internet/c/a/az;

    .line 61
    new-array v0, v5, [Lcom/avast/android/generic/internet/c/a/az;

    sget-object v1, Lcom/avast/android/generic/internet/c/a/az;->a:Lcom/avast/android/generic/internet/c/a/az;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/generic/internet/c/a/az;->b:Lcom/avast/android/generic/internet/c/a/az;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/internet/c/a/az;->c:Lcom/avast/android/generic/internet/c/a/az;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/generic/internet/c/a/az;->f:[Lcom/avast/android/generic/internet/c/a/az;

    .line 89
    new-instance v0, Lcom/avast/android/generic/internet/c/a/ba;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/ba;-><init>()V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/az;->d:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p4, p0, Lcom/avast/android/generic/internet/c/a/az;->e:I

    .line 100
    return-void
.end method

.method public static a(I)Lcom/avast/android/generic/internet/c/a/az;
    .locals 1
    .parameter

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 80
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/internet/c/a/az;->a:Lcom/avast/android/generic/internet/c/a/az;

    goto :goto_0

    .line 78
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/internet/c/a/az;->b:Lcom/avast/android/generic/internet/c/a/az;

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/internet/c/a/az;->c:Lcom/avast/android/generic/internet/c/a/az;

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/az;
    .locals 1
    .parameter

    .prologue
    .line 61
    const-class v0, Lcom/avast/android/generic/internet/c/a/az;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/internet/c/a/az;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/internet/c/a/az;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/avast/android/generic/internet/c/a/az;->f:[Lcom/avast/android/generic/internet/c/a/az;

    invoke-virtual {v0}, [Lcom/avast/android/generic/internet/c/a/az;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/internet/c/a/az;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/az;->e:I

    return v0
.end method
