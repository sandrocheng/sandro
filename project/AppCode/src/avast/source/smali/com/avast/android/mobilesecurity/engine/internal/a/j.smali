.class public final enum Lcom/avast/android/mobilesecurity/engine/internal/a/j;
.super Ljava/lang/Enum;
.source "TypoSquattingConfirmProto.java"

# interfaces
.implements Lcom/google/a/v;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

.field public static final enum b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

.field public static final enum c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

.field private static d:Lcom/google/a/w;

.field private static final synthetic f:[Lcom/avast/android/mobilesecurity/engine/internal/a/j;


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

    .line 1201
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/avast/android/mobilesecurity/engine/internal/a/j;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1202
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/a/j;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1203
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    const-string v1, "REDIRECT_ID_EXISTS"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/avast/android/mobilesecurity/engine/internal/a/j;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1199
    new-array v0, v5, [Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->f:[Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    .line 1227
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/a/k;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/k;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->d:Lcom/google/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1237
    iput p4, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->e:I

    .line 1238
    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/engine/internal/a/j;
    .locals 1
    .parameter

    .prologue
    .line 1214
    packed-switch p0, :pswitch_data_0

    .line 1218
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1215
    :pswitch_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->a:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    goto :goto_0

    .line 1216
    :pswitch_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->b:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    goto :goto_0

    .line 1217
    :pswitch_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->c:Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    goto :goto_0

    .line 1214
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/a/j;
    .locals 1
    .parameter

    .prologue
    .line 1199
    const-class v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/engine/internal/a/j;
    .locals 1

    .prologue
    .line 1199
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->f:[Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/engine/internal/a/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/engine/internal/a/j;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1211
    iget v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/a/j;->e:I

    return v0
.end method
