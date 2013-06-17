.class Lcom/avg/tuneup/taskkiller/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Landroid/app/ActivityManager;

.field final synthetic c:Lcom/avg/tuneup/taskkiller/e;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/e;Landroid/widget/CheckBox;Landroid/app/ActivityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/f;->c:Lcom/avg/tuneup/taskkiller/e;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/f;->a:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/avg/tuneup/taskkiller/f;->b:Landroid/app/ActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/f;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/avg/tuneup/j;->r()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/f;->c:Lcom/avg/tuneup/taskkiller/e;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/f;->c:Lcom/avg/tuneup/taskkiller/e;

    iget-object v1, v1, Lcom/avg/tuneup/taskkiller/e;->b:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/f;->c:Lcom/avg/tuneup/taskkiller/e;

    iget-object v2, v2, Lcom/avg/tuneup/taskkiller/e;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/avg/tuneup/taskkiller/f;->b:Landroid/app/ActivityManager;

    invoke-static {v0, v1, v2, v3}, Lcom/avg/tuneup/taskkiller/d;->a(Lcom/avg/tuneup/taskkiller/d;Landroid/widget/LinearLayout;Landroid/view/View;Landroid/app/ActivityManager;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/f;->c:Lcom/avg/tuneup/taskkiller/e;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/e;->d:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->c(Lcom/avg/tuneup/taskkiller/d;)V

    return-void
.end method
