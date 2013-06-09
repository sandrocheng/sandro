.class final Lorg/antivirus/ui/performance/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/ui/performance/o;

.field final synthetic d:Lorg/antivirus/ui/performance/j;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/performance/j;Ljava/util/ArrayList;ILorg/antivirus/ui/performance/o;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/performance/n;->d:Lorg/antivirus/ui/performance/j;

    iput-object p2, p0, Lorg/antivirus/ui/performance/n;->a:Ljava/util/ArrayList;

    iput p3, p0, Lorg/antivirus/ui/performance/n;->b:I

    iput-object p4, p0, Lorg/antivirus/ui/performance/n;->c:Lorg/antivirus/ui/performance/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/performance/n;->a:Ljava/util/ArrayList;

    iget v1, p0, Lorg/antivirus/ui/performance/n;->b:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v1, p0, Lorg/antivirus/ui/performance/n;->c:Lorg/antivirus/ui/performance/o;

    iget-object v1, v1, Lorg/antivirus/ui/performance/o;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
