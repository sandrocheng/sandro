.class Lcom/avg/tuneup/traffic/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:F

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/avg/tuneup/traffic/a;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/a;FII)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    iput p2, p0, Lcom/avg/tuneup/traffic/f;->a:F

    iput p3, p0, Lcom/avg/tuneup/traffic/f;->b:I

    iput p4, p0, Lcom/avg/tuneup/traffic/f;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    iget v1, p0, Lcom/avg/tuneup/traffic/f;->a:F

    iget-object v2, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v2}, Lcom/avg/tuneup/traffic/a;->e(Lcom/avg/tuneup/traffic/a;)I

    move-result v2

    iget v3, p0, Lcom/avg/tuneup/traffic/f;->b:I

    iget v4, p0, Lcom/avg/tuneup/traffic/f;->c:I

    iget-object v5, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v5}, Lcom/avg/tuneup/traffic/a;->f(Lcom/avg/tuneup/traffic/a;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;FIIII)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->g(Lcom/avg/tuneup/traffic/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->m(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->n(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v2, Lcom/avg/a/g;->traffic_settings_reset_confirmation:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->q(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->o(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/traffic/f;->d:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->p(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    sget v2, Lcom/avg/a/g;->settings_saved:I

    invoke-virtual {v1, v2}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
