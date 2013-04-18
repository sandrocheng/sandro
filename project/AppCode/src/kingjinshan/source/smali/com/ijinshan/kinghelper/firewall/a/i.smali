.class public final Lcom/ijinshan/kinghelper/firewall/a/i;
.super Ljava/lang/Object;
.source "FirewallRuleManager.java"


# static fields
.field public static a:Ljava/lang/Object;

.field private static b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/a/i;->b:Ljava/util/HashMap;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ijinshan/kinghelper/firewall/a/i;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/j;
    .locals 2
    .parameter

    .prologue
    .line 184
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/firewall/a/j;

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/a/j;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 192
    sget-object v0, Lcom/ijinshan/kinghelper/firewall/a/i;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/firewall/a/i;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
