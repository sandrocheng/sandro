.class public final Lcom/keniu/security/protection/p;
.super Ljava/lang/Object;
.source "PreventTheftCommandMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final a:Ljava/lang/String; = "PreventTheftCommandMonitor"

.field private static final b:Ljava/lang/String; = "baojing"

.field private static final c:Ljava/lang/String; = "dingwei"

.field private static final d:Ljava/lang/String; = "xiaohui"

.field private static final e:Ljava/lang/String; = "suoding"

.field private static final f:Ljava/lang/String; = "chongzhimima"

.field private static final g:Ljava/lang/String; = "jiesuo"

.field private static final h:Ljava/lang/String; = "kaiqi"

.field private static final i:Ljava/lang/String; = "(baojing|dingwei|xiaohui|suoding|kaiqi)#(.{6,}+)"

.field private static final j:Ljava/lang/String; = "#(.{6,}+)"

.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static m:Z

.field private static n:Lcom/keniu/security/protection/p;


# instance fields
.field private o:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/keniu/security/protection/p;->m:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 4
    .parameter

    .prologue
    .line 91
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    .line 92
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    .line 93
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 94
    iget-boolean v2, p1, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v2, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 98
    :cond_0
    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "\uff03"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_1
    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/protection/p;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private a(Lcom/jxphone/mosecurity/c/l;)I
    .locals 5
    .parameter

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {p1}, Lcom/jxphone/mosecurity/c/l;->i()I

    move-result v2

    .line 110
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 113
    const-string v3, "\uff03"

    const-string v4, "#"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/protection/p;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 116
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 155
    const-string v0, "PreventTheftCommandMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealCommand sysId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "PreventTheftCommandMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analyzePwd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/keniu/security/protection/p;->b(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "PreventTheftCommandMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreventTheftCommand="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/keniu/security/protection/p;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p2}, Lcom/keniu/security/protection/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 160
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chongzhimima"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "chongzhimima"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v3

    .line 161
    :goto_0
    array-length v1, v0

    if-lt v1, v5, :cond_7

    .line 162
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 163
    aget-object v0, v0, v3

    .line 164
    const-string v2, "chongzhimima"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "jiesuo"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/keniu/security/protection/p;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1}, Lcom/keniu/security/protection/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    .line 192
    :goto_1
    if-ne v0, v3, :cond_1

    if-ltz p3, :cond_1

    .line 194
    :try_start_0
    const-string v1, "PreventTheftCommandMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delbox SMS sysId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/a/t;->a:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_1
    :goto_2
    return v0

    .line 160
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jiesuo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "jiesuo"

    aput-object v1, v0, v4

    const-string v1, ""

    aput-object v1, v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 171
    :cond_4
    const-string v0, "kaiqi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    invoke-direct {p0, v0, v1, p1}, Lcom/keniu/security/protection/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_1

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    const v2, 0x7f0b075a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, p1, v1, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    :goto_3
    move v0, v3

    goto :goto_1

    .line 186
    :cond_6
    invoke-direct {p0, p2}, Lcom/keniu/security/protection/p;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    iget-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    const v2, 0x7f0b0759

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, p1, v1, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3

    .line 198
    :catch_0
    move-exception v1

    .line 199
    const-string v2, "deleteSMS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception:: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    move v0, v4

    goto/16 :goto_1
.end method

.method public static declared-synchronized a()V
    .locals 5

    .prologue
    .line 73
    const-class v0, Lcom/keniu/security/protection/p;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/keniu/security/protection/p;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 77
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/keniu/security/protection/p;->m:Z

    .line 79
    sget-object v1, Lcom/keniu/security/protection/p;->n:Lcom/keniu/security/protection/p;

    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/keniu/security/protection/p;

    invoke-direct {v1}, Lcom/keniu/security/protection/p;-><init>()V

    sput-object v1, Lcom/keniu/security/protection/p;->n:Lcom/keniu/security/protection/p;

    .line 81
    invoke-static {}, Lcom/keniu/security/monitor/a;->a()Lcom/keniu/security/monitor/a;

    move-result-object v1

    .line 82
    sget v2, Lcom/keniu/security/monitor/a;->r:I

    sget-object v3, Lcom/keniu/security/protection/p;->n:Lcom/keniu/security/protection/p;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z

    .line 84
    sget v2, Lcom/keniu/security/monitor/a;->s:I

    sget-object v3, Lcom/keniu/security/protection/p;->n:Lcom/keniu/security/protection/p;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/keniu/security/monitor/a;->a(ILcom/keniu/security/monitor/b;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 322
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/raw_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://contacts/people"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 234
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "baojing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ScreenLockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v1, "preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 239
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;Z)V

    .line 240
    const v0, 0x7f0b074c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 242
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->t(Landroid/content/Context;)V

    .line 244
    :cond_0
    const-string v0, "pto"

    const-string v1, "2"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 206
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "executeCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    const-string v0, "baojing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "baojing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ScreenLockService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "preview"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1, v5}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;Z)V

    const v0, 0x7f0b074c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->t(Landroid/content/Context;)V

    :cond_2
    const-string v0, "pto"

    const-string v1, "2"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_3
    const-string v0, "dingwei"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "dingwei"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/keniu/security/protection/l;

    invoke-direct {v0, p1, p3}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keniu/security/protection/l;->a()V

    const-string v0, "pto"

    const-string v1, "3"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_4
    const-string v0, "xiaohui"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "xiaohui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/keniu/security/protection/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/raw_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/h;->ay:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/keniu/security/protection/p;->a(Ljava/io/File;)V

    :cond_5
    new-instance v0, Lcom/keniu/security/protection/l;

    const-string v1, "xiaohui"

    invoke-direct {v0, p1, p3, v1}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keniu/security/protection/l;->a()V

    const-string v0, "pto"

    const-string v1, "4"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://contacts/people"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 215
    :cond_7
    const-string v0, "suoding"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 216
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "suoding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ScreenLockService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "preview"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p1, v5}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;Z)V

    new-instance v0, Lcom/keniu/security/protection/l;

    const-string v1, "suoding"

    invoke-direct {v0, p1, p3, v1}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/keniu/security/protection/l;->a()V

    const-string v0, "pto"

    const-string v1, "1"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_8
    const-string v0, "chongzhimima"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/keniu/security/protection/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0b0758

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, p3, v0, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->u(Landroid/content/Context;)V

    const-string v0, "pto"

    const-string v1, "5"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 219
    :cond_a
    const-string v0, "jiesuo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 220
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "jiesuo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/keniu/security/protection/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->k(Landroid/content/Context;)V

    invoke-static {p1, v4}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;Z)V

    const-string v0, "pto"

    const-string v1, "6"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_b
    const-string v0, "kaiqi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "kaiqi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;)V

    const v0, 0x7f0b075b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, p3, v0, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    const-string v0, "pto"

    const-string v1, "14"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/io/File;)V
    .locals 5
    .parameter

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1

    .line 367
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 368
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 369
    invoke-direct {p0, v3}, Lcom/keniu/security/protection/p;->a(Ljava/io/File;)V

    .line 371
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 377
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 378
    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 383
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 121
    const-string v0, "chongzhimima"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 130
    :goto_0
    return v0

    .line 123
    :cond_0
    const-string v0, "jiesuo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 124
    goto :goto_0

    .line 125
    :cond_1
    const-string v0, "(baojing|dingwei|xiaohui|suoding|kaiqi)#(.{6,}+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 128
    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 358
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 360
    invoke-direct {p0, v0}, Lcom/keniu/security/protection/p;->a(Ljava/io/File;)V

    .line 362
    :cond_0
    return-void
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 334
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 249
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "suoding"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/keniu/security/protection/ScreenLockService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string v1, "preview"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 254
    invoke-static {p0, v3}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;Z)V

    .line 255
    new-instance v0, Lcom/keniu/security/protection/l;

    const-string v1, "suoding"

    invoke-direct {v0, p0, p1, v1}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0}, Lcom/keniu/security/protection/l;->a()V

    .line 258
    const-string v0, "pto"

    const-string v1, "1"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 134
    const-string v0, "#(.{6,}+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 138
    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-direct {p0, v0}, Lcom/keniu/security/protection/p;->e(Ljava/lang/String;)Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 343
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 263
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "dingwei"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Lcom/keniu/security/protection/l;

    invoke-direct {v0, p0, p1}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lcom/keniu/security/protection/l;->a()V

    .line 266
    const-string v0, "pto"

    const-string v1, "3"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private static c(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "chongzhimima"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "chongzhimima"

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jiesuo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "jiesuo"

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v3

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 351
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/h;->ay:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 271
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "xiaohui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-direct {p0, p2}, Lcom/keniu/security/protection/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 274
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.contacts/raw_contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 275
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/t;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    :goto_3
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/a/h;->ay:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 278
    :goto_4
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/keniu/security/protection/p;->a(Ljava/io/File;)V

    .line 279
    :cond_1
    new-instance v0, Lcom/keniu/security/protection/l;

    const-string v1, "xiaohui"

    invoke-direct {v0, p1, p2, v1}, Lcom/keniu/security/protection/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0}, Lcom/keniu/security/protection/l;->a()V

    .line 282
    const-string v0, "pto"

    const-string v1, "4"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://contacts/people"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 276
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 277
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 287
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, p2}, Lcom/keniu/security/protection/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 291
    const v1, 0x7f0b0758

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v5, p2, v0, v4}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->u(Landroid/content/Context;)V

    .line 297
    const-string v0, "pto"

    const-string v1, "5"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/keniu/security/protection/ui/ag;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 303
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "jiesuo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, p2}, Lcom/keniu/security/protection/p;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-static {p1}, Lcom/keniu/security/protection/ui/ag;->k(Landroid/content/Context;)V

    .line 307
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/keniu/security/protection/ui/ag;->b(Landroid/content/Context;Z)V

    .line 308
    const-string v0, "pto"

    const-string v1, "6"

    const-string v2, ""

    invoke-static {p1, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 313
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "kaiqi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {p0}, Lcom/keniu/security/protection/ui/ag;->f(Landroid/content/Context;)V

    .line 315
    const/4 v0, 0x1

    const v1, 0x7f0b075b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, p1, v1, v2}, Lcom/keniu/security/protection/ui/ag;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)I

    .line 317
    const-string v0, "pto"

    const-string v1, "14"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 46
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "monitorNotify"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sget v0, Lcom/keniu/security/monitor/a;->r:I

    if-ne p1, v0, :cond_3

    .line 48
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "monitorNotify sms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 50
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    iget-boolean v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v2, :cond_0

    move v0, v5

    .line 51
    :goto_0
    if-ne v0, v6, :cond_2

    .line 52
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    move v0, v7

    .line 69
    :goto_1
    return v0

    .line 50
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\uff03"

    const-string v3, "#"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v2, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/protection/p;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v5

    .line 55
    goto :goto_1

    .line 58
    :cond_3
    sget v0, Lcom/keniu/security/monitor/a;->s:I

    if-ne p1, v0, :cond_6

    .line 59
    const-string v0, "PreventTheftCommandMonitor"

    const-string v1, "monitorNotify box"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    check-cast p2, Lcom/jxphone/mosecurity/c/l;

    .line 61
    check-cast p3, Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/protection/p;->o:Landroid/content/Context;

    .line 62
    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jxphone/mosecurity/c/l;->i()I

    move-result v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\uff03"

    const-string v4, "#"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-direct {p0, v0, v1, v2}, Lcom/keniu/security/protection/p;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 63
    if-ne v0, v6, :cond_5

    move v0, v7

    .line 64
    goto :goto_1

    :cond_5
    move v0, v5

    .line 66
    goto :goto_1

    :cond_6
    move v0, v5

    .line 69
    goto :goto_1
.end method
