.class public final enum Lcom/avast/android/generic/g/e;
.super Ljava/lang/Enum;
.source "CommunityIqProto.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/generic/g/e;

.field public static final enum b:Lcom/avast/android/generic/g/e;

.field public static final enum c:Lcom/avast/android/generic/g/e;

.field public static final enum d:Lcom/avast/android/generic/g/e;

.field public static final enum e:Lcom/avast/android/generic/g/e;

.field public static final enum f:Lcom/avast/android/generic/g/e;

.field private static g:Lcom/google/a/w;

.field private static final synthetic i:[Lcom/avast/android/generic/g/e;


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

    .line 90
    new-instance v0, Lcom/avast/android/generic/g/e;

    const-string v1, "MOBILE_SECURITY_INSTALL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/generic/g/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/e;->a:Lcom/avast/android/generic/g/e;

    .line 91
    new-instance v0, Lcom/avast/android/generic/g/e;

    const-string v1, "MOBILE_SECURITY_UPDATE"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/avast/android/generic/g/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/e;->b:Lcom/avast/android/generic/g/e;

    .line 92
    new-instance v0, Lcom/avast/android/generic/g/e;

    const-string v1, "ANTI_THEFT_INSTALL"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/avast/android/generic/g/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/e;->c:Lcom/avast/android/generic/g/e;

    .line 93
    new-instance v0, Lcom/avast/android/generic/g/e;

    const-string v1, "ANTI_THEFT_UPDATE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/avast/android/generic/g/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/e;->d:Lcom/avast/android/generic/g/e;

    .line 94
    new-instance v0, Lcom/avast/android/generic/g/e;

    const-string v1, "VPS_UPDATE_CHECK"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/avast/android/generic/g/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/e;->e:Lcom/avast/android/generic/g/e;

    .line 95
    new-instance v0, Lcom/avast/android/generic/g/e;

    const-string v1, "VPS_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/avast/android/generic/g/e;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/e;->f:Lcom/avast/android/generic/g/e;

    .line 88
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avast/android/generic/g/e;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/generic/g/e;->a:Lcom/avast/android/generic/g/e;

    aput-object v2, v0, v1

    sget-object v1, Lcom/avast/android/generic/g/e;->b:Lcom/avast/android/generic/g/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/generic/g/e;->c:Lcom/avast/android/generic/g/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/generic/g/e;->d:Lcom/avast/android/generic/g/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/generic/g/e;->e:Lcom/avast/android/generic/g/e;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/generic/g/e;->f:Lcom/avast/android/generic/g/e;

    aput-object v1, v0, v8

    sput-object v0, Lcom/avast/android/generic/g/e;->i:[Lcom/avast/android/generic/g/e;

    .line 125
    new-instance v0, Lcom/avast/android/generic/g/f;

    invoke-direct {v0}, Lcom/avast/android/generic/g/f;-><init>()V

    sput-object v0, Lcom/avast/android/generic/g/e;->g:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p4, p0, Lcom/avast/android/generic/g/e;->h:I

    .line 136
    return-void
.end method

.method public static a(I)Lcom/avast/android/generic/g/e;
    .locals 1
    .parameter

    .prologue
    .line 109
    packed-switch p0, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/g/e;->a:Lcom/avast/android/generic/g/e;

    goto :goto_0

    .line 111
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/g/e;->b:Lcom/avast/android/generic/g/e;

    goto :goto_0

    .line 112
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/g/e;->c:Lcom/avast/android/generic/g/e;

    goto :goto_0

    .line 113
    :pswitch_3
    sget-object v0, Lcom/avast/android/generic/g/e;->d:Lcom/avast/android/generic/g/e;

    goto :goto_0

    .line 114
    :pswitch_4
    sget-object v0, Lcom/avast/android/generic/g/e;->e:Lcom/avast/android/generic/g/e;

    goto :goto_0

    .line 115
    :pswitch_5
    sget-object v0, Lcom/avast/android/generic/g/e;->f:Lcom/avast/android/generic/g/e;

    goto :goto_0

    .line 109
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

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/g/e;
    .locals 1
    .parameter

    .prologue
    .line 88
    const-class v0, Lcom/avast/android/generic/g/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/g/e;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/g/e;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/avast/android/generic/g/e;->i:[Lcom/avast/android/generic/g/e;

    invoke-virtual {v0}, [Lcom/avast/android/generic/g/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/g/e;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/avast/android/generic/g/e;->h:I

    return v0
.end method
