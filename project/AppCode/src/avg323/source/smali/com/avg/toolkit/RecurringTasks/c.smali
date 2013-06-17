.class Lcom/avg/toolkit/RecurringTasks/c;
.super Lcom/avg/toolkit/RecurringTasks/d;


# instance fields
.field final synthetic a:Lcom/avg/toolkit/RecurringTasks/b;


# direct methods
.method constructor <init>(Lcom/avg/toolkit/RecurringTasks/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/toolkit/RecurringTasks/c;->a:Lcom/avg/toolkit/RecurringTasks/b;

    invoke-direct {p0, p1, p2}, Lcom/avg/toolkit/RecurringTasks/d;-><init>(Lcom/avg/toolkit/RecurringTasks/b;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/avg/toolkit/RecurringTasks/c;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/avg/toolkit/RecurringTasks/c;->a:Lcom/avg/toolkit/RecurringTasks/b;

    iget-object v1, v1, Lcom/avg/toolkit/RecurringTasks/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/avg/toolkit/RecurringTasks/c;->a:Lcom/avg/toolkit/RecurringTasks/b;

    iget v2, v2, Lcom/avg/toolkit/RecurringTasks/b;->c:I

    invoke-static {v0, v1, v2}, Lcom/avg/toolkit/RecurringTasks/RecurringTaskAlarmReceiver;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
