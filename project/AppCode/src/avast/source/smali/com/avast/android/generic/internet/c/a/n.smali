.class public final enum Lcom/avast/android/generic/internet/c/a/n;
.super Ljava/lang/Enum;
.source "MyAvastPairing.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/generic/internet/c/a/n;

.field public static final enum b:Lcom/avast/android/generic/internet/c/a/n;

.field public static final enum c:Lcom/avast/android/generic/internet/c/a/n;

.field public static final enum d:Lcom/avast/android/generic/internet/c/a/n;

.field public static final enum e:Lcom/avast/android/generic/internet/c/a/n;

.field public static final enum f:Lcom/avast/android/generic/internet/c/a/n;

.field private static g:Lcom/google/a/w;

.field private static final synthetic i:[Lcom/avast/android/generic/internet/c/a/n;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2181
    new-instance v0, Lcom/avast/android/generic/internet/c/a/n;

    const-string v1, "OK"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/generic/internet/c/a/n;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->a:Lcom/avast/android/generic/internet/c/a/n;

    .line 2182
    new-instance v0, Lcom/avast/android/generic/internet/c/a/n;

    const-string v1, "ID_ERROR"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/avast/android/generic/internet/c/a/n;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->b:Lcom/avast/android/generic/internet/c/a/n;

    .line 2183
    new-instance v0, Lcom/avast/android/generic/internet/c/a/n;

    const-string v1, "INVALID_CREDENTIALS"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/avast/android/generic/internet/c/a/n;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->c:Lcom/avast/android/generic/internet/c/a/n;

    .line 2184
    new-instance v0, Lcom/avast/android/generic/internet/c/a/n;

    const-string v1, "AT_ERROR"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/avast/android/generic/internet/c/a/n;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->d:Lcom/avast/android/generic/internet/c/a/n;

    .line 2185
    new-instance v0, Lcom/avast/android/generic/internet/c/a/n;

    const-string v1, "PAIRING_ERROR"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/avast/android/generic/internet/c/a/n;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->e:Lcom/avast/android/generic/internet/c/a/n;

    .line 2186
    new-instance v0, Lcom/avast/android/generic/internet/c/a/n;

    const-string v1, "OTHER_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/avast/android/generic/internet/c/a/n;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->f:Lcom/avast/android/generic/internet/c/a/n;

    .line 2179
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avast/android/generic/internet/c/a/n;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/generic/internet/c/a/n;->a:Lcom/avast/android/generic/internet/c/a/n;

    aput-object v2, v0, v1

    sget-object v1, Lcom/avast/android/generic/internet/c/a/n;->b:Lcom/avast/android/generic/internet/c/a/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/generic/internet/c/a/n;->c:Lcom/avast/android/generic/internet/c/a/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/generic/internet/c/a/n;->d:Lcom/avast/android/generic/internet/c/a/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/generic/internet/c/a/n;->e:Lcom/avast/android/generic/internet/c/a/n;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/generic/internet/c/a/n;->f:Lcom/avast/android/generic/internet/c/a/n;

    aput-object v1, v0, v8

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->i:[Lcom/avast/android/generic/internet/c/a/n;

    .line 2216
    new-instance v0, Lcom/avast/android/generic/internet/c/a/o;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/a/o;-><init>()V

    sput-object v0, Lcom/avast/android/generic/internet/c/a/n;->g:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2226
    iput p4, p0, Lcom/avast/android/generic/internet/c/a/n;->h:I

    .line 2227
    return-void
.end method

.method public static a(I)Lcom/avast/android/generic/internet/c/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2200
    packed-switch p0, :pswitch_data_0

    .line 2207
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2201
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->a:Lcom/avast/android/generic/internet/c/a/n;

    goto :goto_0

    .line 2202
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->b:Lcom/avast/android/generic/internet/c/a/n;

    goto :goto_0

    .line 2203
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->c:Lcom/avast/android/generic/internet/c/a/n;

    goto :goto_0

    .line 2204
    :pswitch_3
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->d:Lcom/avast/android/generic/internet/c/a/n;

    goto :goto_0

    .line 2205
    :pswitch_4
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->e:Lcom/avast/android/generic/internet/c/a/n;

    goto :goto_0

    .line 2206
    :pswitch_5
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->f:Lcom/avast/android/generic/internet/c/a/n;

    goto :goto_0

    .line 2200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/n;
    .locals 1
    .parameter

    .prologue
    .line 2179
    const-class v0, Lcom/avast/android/generic/internet/c/a/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/internet/c/a/n;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/internet/c/a/n;
    .locals 1

    .prologue
    .line 2179
    sget-object v0, Lcom/avast/android/generic/internet/c/a/n;->i:[Lcom/avast/android/generic/internet/c/a/n;

    invoke-virtual {v0}, [Lcom/avast/android/generic/internet/c/a/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/internet/c/a/n;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2197
    iget v0, p0, Lcom/avast/android/generic/internet/c/a/n;->h:I

    return v0
.end method
