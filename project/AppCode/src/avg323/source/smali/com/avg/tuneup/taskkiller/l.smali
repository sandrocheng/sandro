.class Lcom/avg/tuneup/taskkiller/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:I

.field final synthetic d:Lcom/avg/tuneup/taskkiller/b;

.field final synthetic e:Lcom/avg/tuneup/taskkiller/h;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/h;Landroid/view/View;Ljava/util/ArrayList;ILcom/avg/tuneup/taskkiller/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/l;->e:Lcom/avg/tuneup/taskkiller/h;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/l;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/avg/tuneup/taskkiller/l;->b:Ljava/util/ArrayList;

    iput p4, p0, Lcom/avg/tuneup/taskkiller/l;->c:I

    iput-object p5, p0, Lcom/avg/tuneup/taskkiller/l;->d:Lcom/avg/tuneup/taskkiller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/l;->e:Lcom/avg/tuneup/taskkiller/h;

    iget-object v0, v0, Lcom/avg/tuneup/taskkiller/h;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/l;->b:Ljava/util/ArrayList;

    iget v1, p0, Lcom/avg/tuneup/taskkiller/l;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/l;->d:Lcom/avg/tuneup/taskkiller/b;

    iget-object v1, v1, Lcom/avg/tuneup/taskkiller/b;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
