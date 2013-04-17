.class final Lqv;
.super Ljava/lang/Object;

# interfaces
.implements Labu$a;


# instance fields
.field private synthetic a:Lma;

.field private synthetic b:Lqt;


# direct methods
.method constructor <init>(Lqt;Lma;)V
    .locals 0

    iput-object p1, p0, Lqv;->b:Lqt;

    iput-object p2, p0, Lqv;->a:Lma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTaskFinish(Lmp;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Llv;

    iget-object v1, p0, Lqv;->a:Lma;

    iget-object v2, v0, Llv;->f:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lma;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lqv;->a:Lma;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lma;->e:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ldx;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lmp;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png.temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Llv;->f:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, La;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lqv;->b:Lqt;

    iget-object v0, v0, Lqt;->a:Lhn;

    iget-object v1, p0, Lqv;->a:Lma;

    invoke-virtual {v0, v1}, Lhn;->a(Lma;)V

    return-void
.end method
