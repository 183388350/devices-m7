.class Lcom/htc/camera/component/PanoramaUI2$5;
.super Ljava/lang/Object;
.source "PanoramaUI2.java"

# interfaces
.implements Lcom/htc/camera/event/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/camera/event/a",
        "<",
        "Lcom/htc/camera/input/KeyEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/camera/component/PanoramaUI2;


# direct methods
.method constructor <init>(Lcom/htc/camera/component/PanoramaUI2;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/htc/camera/component/PanoramaUI2$5;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/event/EventArgs;)V
    .locals 0

    .prologue
    .line 1027
    check-cast p3, Lcom/htc/camera/input/KeyEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/camera/component/PanoramaUI2$5;->onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/htc/camera/event/Event;Ljava/lang/Object;Lcom/htc/camera/input/KeyEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/camera/event/Event",
            "<",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/htc/camera/input/KeyEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$5;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    iget-object v0, v0, Lcom/htc/camera/component/PanoramaUI2;->isPanoramaActive:Lcom/htc/camera/property/a;

    invoke-virtual {v0}, Lcom/htc/camera/property/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->keyCode:I

    sparse-switch v0, :sswitch_data_0

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1038
    :sswitch_0
    iget v0, p3, Lcom/htc/camera/input/KeyEventArgs;->repeatCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/camera/component/PanoramaUI2$5;->this$0:Lcom/htc/camera/component/PanoramaUI2;

    invoke-virtual {v0}, Lcom/htc/camera/component/PanoramaUI2;->stopCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {p3}, Lcom/htc/camera/input/KeyEventArgs;->setHandled()V

    goto :goto_0

    .line 1032
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method
