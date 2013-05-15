.class final Lcom/avast/android/mobilesecurity/app/filter/core/i;
.super Ljava/lang/Object;
.source "MessageBlockerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/filter/core/k;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z


# direct methods
.method constructor <init>(ILcom/avast/android/mobilesecurity/app/filter/core/k;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput p1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->a:I

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->b:Lcom/avast/android/mobilesecurity/app/filter/core/k;

    iput-object p3, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->e:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 335
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->a:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 336
    const-string v0, "MessageBlockerHelper"

    const-string v1, "Maximum find attempts for message exceeded, message not found."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->b:Lcom/avast/android/mobilesecurity/app/filter/core/k;

    invoke-interface {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/k;->a()V

    .line 341
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->b:Lcom/avast/android/mobilesecurity/app/filter/core/k;

    iget-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->f:Z

    iget v5, p0, Lcom/avast/android/mobilesecurity/app/filter/core/i;->a:I

    add-int/lit8 v5, v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/filter/core/k;ZI)V

    goto :goto_0
.end method
