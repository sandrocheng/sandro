.class public final enum Lcom/avast/android/mobilesecurity/app/campaign/f;
.super Ljava/lang/Enum;
.source "CampaignType.java"


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/app/campaign/f;

.field private static final b:Landroid/util/SparseArray;

.field private static final synthetic d:[Lcom/avast/android/mobilesecurity/app/campaign/f;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/avast/android/mobilesecurity/app/campaign/f;

    const-string v1, "SECURE_LINE"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/campaign/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/campaign/f;->a:Lcom/avast/android/mobilesecurity/app/campaign/f;

    .line 17
    new-array v0, v3, [Lcom/avast/android/mobilesecurity/app/campaign/f;

    sget-object v1, Lcom/avast/android/mobilesecurity/app/campaign/f;->a:Lcom/avast/android/mobilesecurity/app/campaign/f;

    aput-object v1, v0, v2

    sput-object v0, Lcom/avast/android/mobilesecurity/app/campaign/f;->d:[Lcom/avast/android/mobilesecurity/app/campaign/f;

    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/campaign/f;->b:Landroid/util/SparseArray;

    .line 24
    const-class v0, Lcom/avast/android/mobilesecurity/app/campaign/f;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/campaign/f;

    .line 25
    sget-object v2, Lcom/avast/android/mobilesecurity/app/campaign/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/campaign/f;->a()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/avast/android/mobilesecurity/app/campaign/f;->c:I

    .line 33
    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/app/campaign/f;
    .locals 1
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/avast/android/mobilesecurity/app/campaign/f;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/campaign/f;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/app/campaign/f;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/avast/android/mobilesecurity/app/campaign/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/campaign/f;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/app/campaign/f;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/avast/android/mobilesecurity/app/campaign/f;->d:[Lcom/avast/android/mobilesecurity/app/campaign/f;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/app/campaign/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/app/campaign/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/campaign/f;->c:I

    return v0
.end method
