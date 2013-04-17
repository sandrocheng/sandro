.class public final Lpx$a;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private synthetic e:Lpx;


# direct methods
.method public constructor <init>(Lpx;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lpx$a;->e:Lpx;

    const/16 v0, 0x19a

    invoke-direct {p0, p2, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lpx$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 9

    const-wide/16 v7, 0x3e8

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx$a;->e:Lpx;

    invoke-static {v1}, Lpx;->b(Lpx;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lk;->b(Ljava/io/File;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lpx$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0, v5}, Lpx;->b(Lpx;Z)Z

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->c(Lpx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->d(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->d(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->d(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->d(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    :cond_1
    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->d(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, p0, Lpx$a;->b:Ljava/lang/String;

    iput-boolean v5, p0, Lpx$a;->c:Z

    iput-boolean v5, p0, Lpx$a;->d:Z

    iget-object v0, p0, Lpx$a;->e:Lpx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpx$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpx;->a(Lpx;Ljava/lang/String;)V

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "movice_camera_dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "movice_camera_dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lpx$a;->e:Lpx;

    iget-object v1, p0, Lpx$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lpx;->b(Lpx;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v1, p0, Lpx$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "movice_camera_dir"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lpx$a;->e:Lpx;

    invoke-static {v1}, Lpx;->e(Lpx;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lk;->b(Ljava/io/File;)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lpx$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0, v5}, Lpx;->c(Lpx;Z)Z

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->c(Lpx;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->f(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->f(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->f(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->f(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    cmp-long v0, v0, v7

    if-lez v0, :cond_0

    :cond_4
    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->f(Lpx;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v6, p0, Lpx$a;->b:Ljava/lang/String;

    iput-boolean v5, p0, Lpx$a;->c:Z

    iput-boolean v5, p0, Lpx$a;->d:Z

    iget-object v0, p0, Lpx$a;->e:Lpx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpx$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lpx;->a(Lpx;Ljava/lang/String;)V

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "Pic_Camera_Dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "Pic_Camera_Dir"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    iget-object v0, p0, Lpx$a;->e:Lpx;

    iget-object v1, p0, Lpx$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lpx;->b(Lpx;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v1, p0, Lpx$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lhm;->b:Landroid/content/SharedPreferences$Editor;

    const-string v2, "Pic_Camera_Dir"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0}, Lpx;->a(Lpx;)Lhm;

    move-result-object v0

    iget-object v0, v0, Lhm;->a:Landroid/content/SharedPreferences;

    const-string v1, "need_save_file_status"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx$a;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    iput-object v0, p0, Lpx$a;->b:Ljava/lang/String;

    :cond_6
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lk;->b(Ljava/io/File;)I

    move-result v1

    if-ne v1, v3, :cond_8

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0, v3}, Lpx;->b(Lpx;Z)Z

    goto/16 :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lpx$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lpx$a;->c:Z

    goto :goto_1

    :cond_8
    if-nez v1, :cond_9

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0, v3}, Lpx;->c(Lpx;Z)Z

    goto/16 :goto_0

    :cond_9
    const-string v1, "temp_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpx$a;->e:Lpx;

    invoke-static {v0, v3}, Lpx;->b(Lpx;Z)Z

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpx$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lpx$a;->c:Z

    if-eqz v0, :cond_0

    :cond_a
    iput-boolean v3, p0, Lpx$a;->d:Z

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x80 -> :sswitch_0
        0x100 -> :sswitch_1
    .end sparse-switch
.end method
