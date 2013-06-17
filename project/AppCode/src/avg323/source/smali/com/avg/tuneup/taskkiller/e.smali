.class Lcom/avg/tuneup/taskkiller/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/avg/tuneup/taskkiller/d;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/d;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/e;->a:Landroid/widget/Button;

    iput-object p3, p0, Lcom/avg/tuneup/taskkiller/e;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/avg/tuneup/taskkiller/e;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->a(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    sget v1, Lcom/avg/a/g;->task_killer_close_all:I

    invoke-virtual {v0, v1}, Lcom/avg/ui/general/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/e;->a:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    invoke-virtual {v0}, Lcom/avg/tuneup/taskkiller/d;->h()Landroid/support/v4/app/i;

    move-result-object v1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->b(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Lcom/avg/tuneup/j;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/avg/a/f;->dont_show_again:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    sget v4, Lcom/avg/a/g;->task_killer_close_all:I

    invoke-virtual {v3, v4}, Lcom/avg/tuneup/taskkiller/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    sget v4, Lcom/avg/a/g;->task_killer_are_you_sure_close_all:I

    invoke-virtual {v3, v4}, Lcom/avg/tuneup/taskkiller/d;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v3, Lcom/avg/a/e;->skipCheckbox:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    sget v3, Lcom/avg/a/g;->ok:I

    new-instance v4, Lcom/avg/tuneup/taskkiller/f;

    invoke-direct {v4, p0, v1, v0}, Lcom/avg/tuneup/taskkiller/f;-><init>(Lcom/avg/tuneup/taskkiller/e;Landroid/widget/CheckBox;Landroid/app/ActivityManager;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v0, Lcom/avg/a/g;->cancel:I

    new-instance v1, Lcom/avg/tuneup/taskkiller/g;

    invoke-direct {v1, p0}, Lcom/avg/tuneup/taskkiller/g;-><init>(Lcom/avg/tuneup/taskkiller/e;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/e;->b:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/e;->c:Landroid/view/View;

    invoke-static {v1, v2, v3, v0}, Lcom/avg/tuneup/taskkiller/d;->a(Lcom/avg/tuneup/taskkiller/d;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/app/ActivityManager;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->c(Lcom/avg/tuneup/taskkiller/d;)V

    goto :goto_0
.end method
