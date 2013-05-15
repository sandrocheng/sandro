.class synthetic Lcom/avast/android/mobilesecurity/engine/internal/aa;
.super Ljava/lang/Object;
.source "VpsUpdater.java"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 670
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/v;->values()[Lcom/avast/android/mobilesecurity/engine/internal/v;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/aa;->b:[I

    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/aa;->b:[I

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/v;->a:Lcom/avast/android/mobilesecurity/engine/internal/v;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/v;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    .line 637
    :goto_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/w;->values()[Lcom/avast/android/mobilesecurity/engine/internal/w;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/aa;->a:[I

    :try_start_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/aa;->a:[I

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/w;->b:Lcom/avast/android/mobilesecurity/engine/internal/w;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/w;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/aa;->a:[I

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/w;->c:Lcom/avast/android/mobilesecurity/engine/internal/w;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/w;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/aa;->a:[I

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/w;->a:Lcom/avast/android/mobilesecurity/engine/internal/w;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/w;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    .line 670
    :catch_3
    move-exception v0

    goto :goto_0
.end method
