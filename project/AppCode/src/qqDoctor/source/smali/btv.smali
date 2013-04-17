.class final Lbtv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/update/IUpdateObserver;


# instance fields
.field private synthetic a:Lbtu;


# direct methods
.method constructor <init>(Lbtu;)V
    .locals 0

    iput-object p1, p0, Lbtv;->a:Lbtu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Lcom/tencent/tmsecure/module/update/UpdateInfo;)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p1, Lcom/tencent/tmsecure/module/update/UpdateInfo;->flag:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lbtv;->a:Lbtu;

    invoke-static {v1, v0}, Lbtu;->a(Lbtu;LQQPIM/SoftListType;)V

    return-void

    :sswitch_0
    sget-object v0, LQQPIM/SoftListType;->WHITELIST_COMMON:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_1
    sget-object v0, LQQPIM/SoftListType;->BLACKLIST_ROM_THIRDPART:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_2
    sget-object v0, LQQPIM/SoftListType;->WHITELIST_UNUSUAL:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_3
    sget-object v0, LQQPIM/SoftListType;->BLACKLIST_ROM:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_4
    sget-object v0, LQQPIM/SoftListType;->BLACKLIST_WITHPLUGIN:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_5
    sget-object v0, LQQPIM/SoftListType;->WHITELIST_ROM:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_6
    sget-object v0, LQQPIM/SoftListType;->PRIVACYLOCKLIST_USUAL:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_7
    sget-object v0, LQQPIM/SoftListType;->BLACKLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_8
    sget-object v0, LQQPIM/SoftListType;->WHITELIST_KILL_PROCESS:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_9
    sget-object v0, LQQPIM/SoftListType;->WHITELIST_AUTO_ROOT:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_a
    sget-object v0, LQQPIM/SoftListType;->WHITELIST_PERMISSION_CONTROL:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_b
    sget-object v0, LQQPIM/SoftListType;->CAMERA_SOFTWARE_LIST:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_c
    sget-object v0, LQQPIM/SoftListType;->DEEPCLEAN_SOFTWARE_LIST:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_d
    sget-object v0, LQQPIM/SoftListType;->DEEPCLEAN_SOFT_PATH_LIST:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_e
    sget-object v0, LQQPIM/SoftListType;->PERMIS_MONITOR_LIST:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_f
    sget-object v0, LQQPIM/SoftListType;->NOTKILLLIST_KILL_PROCESSES:LQQPIM/SoftListType;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_1
        0x80 -> :sswitch_3
        0x100 -> :sswitch_5
        0x200 -> :sswitch_0
        0x400 -> :sswitch_2
        0x800 -> :sswitch_4
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_7
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_9
        0x10000 -> :sswitch_a
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_c
        0x80000 -> :sswitch_d
        0x100000 -> :sswitch_e
        0x800000 -> :sswitch_f
    .end sparse-switch
.end method
