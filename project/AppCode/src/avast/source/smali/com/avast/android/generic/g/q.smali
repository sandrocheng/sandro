.class public final enum Lcom/avast/android/generic/g/q;
.super Ljava/lang/Enum;
.source "FeedbackProto.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/generic/g/q;

.field public static final enum b:Lcom/avast/android/generic/g/q;

.field public static final enum c:Lcom/avast/android/generic/g/q;

.field public static final enum d:Lcom/avast/android/generic/g/q;

.field private static e:Lcom/google/a/w;

.field private static final synthetic g:[Lcom/avast/android/generic/g/q;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 13
    new-instance v0, Lcom/avast/android/generic/g/q;

    const-string v1, "CUSTOM_FEEDBACK"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/avast/android/generic/g/q;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/q;->a:Lcom/avast/android/generic/g/q;

    .line 14
    new-instance v0, Lcom/avast/android/generic/g/q;

    const-string v1, "FEATURE_REQUEST"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/avast/android/generic/g/q;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/q;->b:Lcom/avast/android/generic/g/q;

    .line 15
    new-instance v0, Lcom/avast/android/generic/g/q;

    const-string v1, "BUG_REPORT"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/avast/android/generic/g/q;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/q;->c:Lcom/avast/android/generic/g/q;

    .line 16
    new-instance v0, Lcom/avast/android/generic/g/q;

    const-string v1, "CRASH_REPORT"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/avast/android/generic/g/q;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/q;->d:Lcom/avast/android/generic/g/q;

    .line 11
    new-array v0, v6, [Lcom/avast/android/generic/g/q;

    sget-object v1, Lcom/avast/android/generic/g/q;->a:Lcom/avast/android/generic/g/q;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/generic/g/q;->b:Lcom/avast/android/generic/g/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/generic/g/q;->c:Lcom/avast/android/generic/g/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/generic/g/q;->d:Lcom/avast/android/generic/g/q;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/android/generic/g/q;->g:[Lcom/avast/android/generic/g/q;

    .line 42
    new-instance v0, Lcom/avast/android/generic/g/r;

    invoke-direct {v0}, Lcom/avast/android/generic/g/r;-><init>()V

    sput-object v0, Lcom/avast/android/generic/g/q;->e:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p4, p0, Lcom/avast/android/generic/g/q;->f:I

    .line 53
    return-void
.end method

.method public static a(I)Lcom/avast/android/generic/g/q;
    .locals 1
    .parameter

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    .line 33
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/g/q;->a:Lcom/avast/android/generic/g/q;

    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/g/q;->b:Lcom/avast/android/generic/g/q;

    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/g/q;->c:Lcom/avast/android/generic/g/q;

    goto :goto_0

    .line 32
    :pswitch_3
    sget-object v0, Lcom/avast/android/generic/g/q;->d:Lcom/avast/android/generic/g/q;

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/g/q;
    .locals 1
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/avast/android/generic/g/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/g/q;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/g/q;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/avast/android/generic/g/q;->g:[Lcom/avast/android/generic/g/q;

    invoke-virtual {v0}, [Lcom/avast/android/generic/g/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/g/q;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/avast/android/generic/g/q;->f:I

    return v0
.end method
