.class final synthetic Lcom/avast/android/mobilesecurity/vps/a/b;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a/d;->values()[Lcom/avast/android/mobilesecurity/vps/a/d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/b;->b:[I

    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/a/b;->b:[I

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/a/d;->a:Lcom/avast/android/mobilesecurity/vps/a/d;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/a/d;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-static {}, Lcom/avast/android/mobilesecurity/vps/a/c;->values()[Lcom/avast/android/mobilesecurity/vps/a/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/a/b;->a:[I

    :try_start_1
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/a/b;->a:[I

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/a/c;->a:Lcom/avast/android/mobilesecurity/vps/a/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/vps/a/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
