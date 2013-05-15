.class public final enum Lcom/avast/android/generic/g/g;
.super Ljava/lang/Enum;
.source "CommunityIqProto.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/generic/g/g;

.field public static final enum b:Lcom/avast/android/generic/g/g;

.field public static final enum c:Lcom/avast/android/generic/g/g;

.field public static final enum d:Lcom/avast/android/generic/g/g;

.field public static final enum e:Lcom/avast/android/generic/g/g;

.field public static final enum f:Lcom/avast/android/generic/g/g;

.field public static final enum g:Lcom/avast/android/generic/g/g;

.field public static final enum h:Lcom/avast/android/generic/g/g;

.field private static i:Lcom/google/a/w;

.field private static final synthetic k:[Lcom/avast/android/generic/g/g;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 143
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_RESULT_UPDATE_AVAILABLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->a:Lcom/avast/android/generic/g/g;

    .line 144
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_RESULT_UP_TO_DATE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->b:Lcom/avast/android/generic/g/g;

    .line 145
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_ERROR_OLD_APPLICATION_VERSION"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->c:Lcom/avast/android/generic/g/g;

    .line 146
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_ERROR_CONNECTION_PROBLEMS"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->d:Lcom/avast/android/generic/g/g;

    .line 147
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_ERROR_SIGNATURE_NOT_VALID"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->e:Lcom/avast/android/generic/g/g;

    .line 148
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_ERROR_WRONG_PROTO_FILE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->f:Lcom/avast/android/generic/g/g;

    .line 149
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_ERROR_BROKEN_VERSION_STRINGS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->g:Lcom/avast/android/generic/g/g;

    .line 150
    new-instance v0, Lcom/avast/android/generic/g/g;

    const-string v1, "UPDATE_CHECK_ERROR_CURRENT_VPS_INVALID"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avast/android/generic/g/g;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/generic/g/g;->h:Lcom/avast/android/generic/g/g;

    .line 141
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/avast/android/generic/g/g;

    const/4 v1, 0x0

    sget-object v2, Lcom/avast/android/generic/g/g;->a:Lcom/avast/android/generic/g/g;

    aput-object v2, v0, v1

    sget-object v1, Lcom/avast/android/generic/g/g;->b:Lcom/avast/android/generic/g/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/generic/g/g;->c:Lcom/avast/android/generic/g/g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avast/android/generic/g/g;->d:Lcom/avast/android/generic/g/g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avast/android/generic/g/g;->e:Lcom/avast/android/generic/g/g;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avast/android/generic/g/g;->f:Lcom/avast/android/generic/g/g;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/avast/android/generic/g/g;->g:Lcom/avast/android/generic/g/g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avast/android/generic/g/g;->h:Lcom/avast/android/generic/g/g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avast/android/generic/g/g;->k:[Lcom/avast/android/generic/g/g;

    .line 184
    new-instance v0, Lcom/avast/android/generic/g/h;

    invoke-direct {v0}, Lcom/avast/android/generic/g/h;-><init>()V

    sput-object v0, Lcom/avast/android/generic/g/g;->i:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput p4, p0, Lcom/avast/android/generic/g/g;->j:I

    .line 195
    return-void
.end method

.method public static a(I)Lcom/avast/android/generic/g/g;
    .locals 1
    .parameter

    .prologue
    .line 166
    packed-switch p0, :pswitch_data_0

    .line 175
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 167
    :pswitch_0
    sget-object v0, Lcom/avast/android/generic/g/g;->a:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 168
    :pswitch_1
    sget-object v0, Lcom/avast/android/generic/g/g;->b:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 169
    :pswitch_2
    sget-object v0, Lcom/avast/android/generic/g/g;->c:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 170
    :pswitch_3
    sget-object v0, Lcom/avast/android/generic/g/g;->d:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 171
    :pswitch_4
    sget-object v0, Lcom/avast/android/generic/g/g;->e:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 172
    :pswitch_5
    sget-object v0, Lcom/avast/android/generic/g/g;->f:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 173
    :pswitch_6
    sget-object v0, Lcom/avast/android/generic/g/g;->g:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 174
    :pswitch_7
    sget-object v0, Lcom/avast/android/generic/g/g;->h:Lcom/avast/android/generic/g/g;

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/generic/g/g;
    .locals 1
    .parameter

    .prologue
    .line 141
    const-class v0, Lcom/avast/android/generic/g/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/g/g;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/generic/g/g;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/avast/android/generic/g/g;->k:[Lcom/avast/android/generic/g/g;

    invoke-virtual {v0}, [Lcom/avast/android/generic/g/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/generic/g/g;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/avast/android/generic/g/g;->j:I

    return v0
.end method
