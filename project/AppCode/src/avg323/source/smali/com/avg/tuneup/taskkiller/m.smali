.class Lcom/avg/tuneup/taskkiller/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/LinearLayout;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/avg/tuneup/taskkiller/d;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/d;Landroid/widget/LinearLayout;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/m;->c:Lcom/avg/tuneup/taskkiller/d;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/m;->a:Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/avg/tuneup/taskkiller/m;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/m;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/m;->b:Landroid/view/View;

    sget v1, Lcom/avg/a/e;->ll_bottom_panel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
