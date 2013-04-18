.class final Lcom/keniu/security/main/ae;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1385
    iput-object p1, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iput-object p2, p0, Lcom/keniu/security/main/ae;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1389
    iget-object v0, p0, Lcom/keniu/security/main/ae;->a:Landroid/view/View;

    const v1, 0x7f080352

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1391
    iget-object v1, p0, Lcom/keniu/security/main/ae;->a:Landroid/view/View;

    const v2, 0x7f080354

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1395
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1396
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1398
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1399
    const v0, 0x7f0b0605

    .line 1400
    iget-object v1, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v3, v1, Lcom/keniu/security/main/MainActivity;->f:Z

    .line 1424
    :goto_0
    iget-object v1, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1426
    iget-object v0, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iget-boolean v0, v0, Lcom/keniu/security/main/MainActivity;->f:Z

    if-eqz v0, :cond_5

    .line 1427
    iget-object v0, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 1429
    invoke-virtual {v0, v3}, Lcom/keniu/security/a;->c(Z)V

    .line 1430
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1431
    iget-object v0, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v4}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    .line 1436
    :goto_1
    return-void

    .line 1401
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1402
    const v0, 0x7f0b0606

    .line 1403
    iget-object v1, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v3, v1, Lcom/keniu/security/main/MainActivity;->f:Z

    goto :goto_0

    .line 1404
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1405
    iget-object v0, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v3, v0, Lcom/keniu/security/main/MainActivity;->f:Z

    .line 1406
    const v0, 0x7f0b060a

    goto :goto_0

    .line 1407
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_3

    .line 1408
    iget-object v0, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v3, v0, Lcom/keniu/security/main/MainActivity;->f:Z

    .line 1409
    const v0, 0x7f0b0607

    goto :goto_0

    .line 1410
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-le v1, v2, :cond_4

    .line 1411
    iget-object v0, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v3, v0, Lcom/keniu/security/main/MainActivity;->f:Z

    .line 1412
    const v0, 0x7f0b0608

    goto :goto_0

    .line 1414
    :cond_4
    iget-object v1, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    iput-boolean v4, v1, Lcom/keniu/security/main/MainActivity;->f:Z

    .line 1415
    iget-object v1, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1417
    const-string v2, "safe_password"

    .line 1418
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1419
    invoke-static {v0}, Lcom/jxphone/mosecurity/d/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1421
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1422
    const v0, 0x7f0b0604

    goto :goto_0

    .line 1433
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/main/ae;->b:Lcom/keniu/security/main/MainActivity;

    invoke-static {p1, v3}, Lcom/keniu/security/main/MainActivity;->a(Landroid/content/DialogInterface;Z)V

    goto :goto_1
.end method
