.class public final enum Lcom/avast/android/generic/internet/c/a/av;
.super Ljava/lang/Enum;
.source "MyAvastStatus.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/generic/internet/c/a/av;

.field public static final enum b:Lcom/avast/android/generic/internet/c/a/av;

.field public static final enum c:Lcom/avast/android/generic/internet/c/a/av;

.field private static d:Lcom/google/a/w;

.field private static final synthetic f:[Lcom/avast/android/generic/internet/c/a/av;


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

    .line 107
    new-instance v0, Lcom/avast/android/generic/internet/c/a/av;

    const-string v1, "FILE"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/avast/android/generic/internet/c/a/av;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    .line 108
    new-instance v0, Lcom/avast/android/generic/internet/c/a/av;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/avast/android/generic/internet/c/a/av;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/av;->b:Lcom/avast/android/generic/internet/c/a/av;

    .line 109
    new-instance v0, Lcom/avast/android/generic/internet/c/a/av;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/avast/android/generic/internet/c/a/av;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    .line 105
    new-array v0, v5, [Lcom/avast/android/generic/internet/c/a/av;

    sget-object v1, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/generic/internet/c/a/av;->b:Lcom/avast/android/generic/internet/c/a/av;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/generic/internet/c/a/av;->f:[Lcom/avast/android/generic/internet/c/a/av;

    .line 133
    new-instance v0, Lcom/avast/android/generic/internet/c/a/aw;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/aw;-><init>()V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/av;->d:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 143
    iput p4, p0, Lcom/avast/android/generic/internet/c/a/av;->e:I

    .line 144
    return-void
.end method

.method public static a(I)Lcom/avast/android/generic/internet/c/a/av;
    .locals 1
    .parameter

    .prologue
    .line 120
    packed-switch p0, :pswitch_data_0

    .line 124
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 121
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->a:Lcom/avast/android/generic/internet/c/a/av;

    goto :goto_0

    .line 122
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->b:Lcom/avast/android/generic/internet/c/a/av;

    goto :goto_0

    .line 123
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->c:Lcom/avast/android/generic/internet/c/a/av;

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/av;
    .locals 1
    .parameter

    .prologue
    .line 105
    const-class v0, Lcom/avast/android/generic/internet/c/a/av;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/internet/c/a/av;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/internet/c/a/av;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/avast/android/generic/internet/c/a/av;->f:[Lcom/avast/android/generic/internet/c/a/av;

    invoke-virtual {v0}, [Lcom/avast/android/generic/internet/c/a/av;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/internet/c/a/av;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/av;->e:I

    return v0
.end method
