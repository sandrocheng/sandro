.class Lcom/avg/tuneup/taskkiller/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/widget/b;->c:Lcom/avg/tuneup/taskkiller/widget/CloseAllTasksWidgetPlugin;

    iput-object p2, p0, Lcom/avg/tuneup/taskkiller/widget/b;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/avg/tuneup/taskkiller/widget/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/widget/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/widget/b;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
