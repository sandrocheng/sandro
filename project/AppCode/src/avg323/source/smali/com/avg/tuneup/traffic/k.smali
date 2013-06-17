.class Lcom/avg/tuneup/traffic/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/CheckBox;

.field final synthetic c:Lcom/avg/tuneup/traffic/a;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/traffic/a;Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/traffic/k;->c:Lcom/avg/tuneup/traffic/a;

    iput-object p2, p0, Lcom/avg/tuneup/traffic/k;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/avg/tuneup/traffic/k;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/avg/tuneup/traffic/k;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/avg/tuneup/traffic/k;->c:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, v0}, Lcom/avg/tuneup/traffic/a;->c(Lcom/avg/tuneup/traffic/a;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/traffic/k;->c:Lcom/avg/tuneup/traffic/a;

    invoke-static {v0}, Lcom/avg/tuneup/traffic/a;->a(Lcom/avg/tuneup/traffic/a;)Lcom/avg/tuneup/traffic/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/traffic/o;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/avg/tuneup/traffic/k;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {}, Lcom/avg/tuneup/j;->i()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Lcom/avg/tuneup/j;->c(Z)V

    iget-object v1, p0, Lcom/avg/tuneup/traffic/k;->c:Lcom/avg/tuneup/traffic/a;

    invoke-static {v1}, Lcom/avg/tuneup/traffic/a;->b(Lcom/avg/tuneup/traffic/a;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    const-string v2, "data_usage_settings"

    const-string v3, "notify_about_data_usage"

    if-eqz v0, :cond_1

    const-string v0, "on"

    :goto_1
    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    const-string v0, "off"

    goto :goto_1
.end method
